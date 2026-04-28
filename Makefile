OUTPUT_NAME := openlight_camera.apk

SOURCEDIR := src/
STAGE2_BUILDDIR := build/stage2/
STAGE3_BUILDDIR := build/stage3/
LIBSDIR := libs/

LIGHT_CAMERA_FILES := $(shell find light_camera/ -type f)
JAVA_FILES := $(shell find $(SOURCEDIR) -name '*.java')
JAVA_FILES_SAFE := $(shell find $(SOURCEDIR) -name '*.java' | sed 's/\$$/\\\$$/g')
BASE_CLASS_FILES := $(patsubst $(SOURCEDIR)%,$(STAGE2_BUILDDIR)%,$(patsubst %.java,%.class,$(JAVA_FILES)))

# Third-party library JARs bundled into the DEX
LIB_JARS := $(wildcard $(LIBSDIR)*.jar)
LIB_CLASSPATH := $(shell echo "$(LIB_JARS)" | tr ' ' ':')

# "Provided" JARs: compile-time only, available on device at runtime (not bundled)
PROVIDED_JARS := $(wildcard $(LIBSDIR)provided/*.jar)
PROVIDED_CLASSPATH := $(shell echo "$(PROVIDED_JARS)" | tr ' ' ':')

# Stamp file holding a sorted list of all smali files; rebuild stage1 when the list changes (i.e. files are deleted)
build/smali.stamp: FORCE
	@mkdir -p build
	@find light_camera/smali -name '*.smali' | sort > build/smali.stamp.new
	@if ! diff -q build/smali.stamp.new $@ > /dev/null 2>&1; then \
		mv build/smali.stamp.new $@; \
	else \
		rm build/smali.stamp.new; \
	fi

.PHONY: apk-signed FORCE
apk-signed: $(OUTPUT_NAME)
	$(APKSIGNER) sign --ks .private/my-release-key.keystore --ks-pass file:.private/pass --in $(OUTPUT_NAME)

build/stage1.apk: $(LIGHT_CAMERA_FILES) build/smali.stamp
	rm -rf light_camera/build/
	$(APKTOOL) b light_camera -o $@

build/classes.dex: build/stage1.apk
	$(UNZIP_EXE) -oj build/stage1.apk "classes.dex" -d build/
	touch $@

build/classes.jar: build/classes.dex
	$(DEX2JAR) build/classes.dex -o $@ --force

$(STAGE2_BUILDDIR): build/classes.jar $(JAVA_FILES) $(LIB_JARS) $(PROVIDED_JARS)
	$(JAVAC_EXE) --release 8 -Xlint:-options -d $@ \
	    -cp $(ANDROID_JAR):build/classes.jar$(if $(LIB_JARS),:$(LIB_CLASSPATH))$(if $(PROVIDED_JARS),:$(PROVIDED_CLASSPATH)) \
	    $(JAVA_FILES_SAFE) "-Xlint:unchecked"

build/classes2.jar: $(STAGE2_BUILDDIR) build/classes.dex $(BASE_CLASS_FILES) $(LIB_JARS) $(PROVIDED_JARS)
	$(D8) --lib $(ANDROID_JAR) $(patsubst %,--lib %,$(PROVIDED_JARS)) --output $@ build/classes.dex \
	    $(LIB_JARS) \
	    $(patsubst %,"%",$(shell find $(STAGE2_BUILDDIR) -name '*.class' | sed 's/\$$/\\\$$/g'))

$(STAGE3_BUILDDIR): build/classes2.jar $(LIGHT_CAMERA_FILES)
	mkdir -p $@
	cp -r light_camera/assets $@
	cp -r light_camera/original $@
	cp -r light_camera/res $@
	cp -r light_camera/AndroidManifest.xml $@
	cp -r light_camera/apktool.yml $@
	$(UNZIP_EXE) -oj build/classes2.jar "classes.dex" -d $@

$(OUTPUT_NAME): $(STAGE3_BUILDDIR)
	$(APKTOOL) b $(STAGE3_BUILDDIR) -o $@

.PHONY: apk
apk: $(OUTPUT_NAME)

.PHONY: install
install: apk-signed
	adb install -r $(OUTPUT_NAME)

.PHONY: clean
clean:
	rm -rf build

# .PHONY: disasm
# disasm:
# 	rm -rf light_camera
# 	$(APKTOOL) d light_camera.apk -o light_camera

# deodex:
# 	@bash -eu -c '\
# 	  WORKDIR="$$(mktemp -d)"; \
# 	  SMALI_TMP="$$(mktemp -d)"; \
# 	  trap "rm -rf \"$$WORKDIR\" \"$$SMALI_TMP\"" EXIT; \
# 	  cp "light_camera.apk" "$$WORKDIR/work.apk"; \
# 	  /tools/dex-tools/d2j-baksmali.sh -x -o "$$SMALI_TMP" "light_camera.odex" 2>/dev/null || \
# 	    /tools/dex-tools/d2j-baksmali.sh deodex -o "$$SMALI_TMP" "light_camera.odex"; \
# 	  /tools/dex-tools/d2j-smali.sh assemble "$$SMALI_TMP" -o "$$WORKDIR/classes.dex"; \
# 	  zip -q -d "$$WORKDIR/work.apk" "classes*.dex" || true; \
# 	  zip -q -u "$$WORKDIR/work.apk" "$$WORKDIR/classes.dex"; \
# 	'