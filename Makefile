include .env

OUTPUT_NAME := openlight_camera.apk

SOURCEDIR := src/
STAGE2_BUILDDIR := build/stage2/
STAGE3_BUILDDIR := build/stage3/

LIGHT_CAMERA_FILES := $(wildcard light_camera/*)
JAVA_FILES := $(shell find $(SOURCEDIR) -name '*.java')
JAVA_FILES_SAFE := $(shell find $(SOURCEDIR) -name '*.java' | sed 's/\$$/\\\$$/g')
BASE_CLASS_FILES := $(patsubst $(SOURCEDIR)%,$(STAGE2_BUILDDIR)%,$(patsubst %.java,%.class,$(JAVA_FILES)))

.PHONY: apk-signed
apk-signed: $(OUTPUT_NAME)
	apksigner sign --ks .private/my-release-key.keystore --ks-pass file:.private/pass --in $(OUTPUT_NAME)

build/stage1.apk: $(LIGHT_CAMERA_FILES)
	rm -rf light_camera/build/
	$(APKTOOL) b light_camera -o $@

build/classes.dex: build/stage1.apk
	$(UNZIP) -oj build/stage1.apk "classes.dex" -d build/
	touch $@

build/classes.jar: build/classes.dex
	$(DEX2JAR) build/classes.dex -o $@ --force

$(STAGE2_BUILDDIR): build/classes.jar $(JAVA_FILES)
	$(JAVAC) -d $@ -cp $(ANDROID.JAR):build/classes.jar $(JAVA_FILES_SAFE) "-Xlint:unchecked"

build/classes2.jar: $(STAGE2_BUILDDIR) build/classes.dex $(BASE_CLASS_FILES)
	$(D8) --output $@ build/classes.dex $(patsubst %,"%",$(shell find $(STAGE2_BUILDDIR) -name '*.class' | sed 's/\$$/\\\$$/g'))

$(STAGE3_BUILDDIR): build/classes2.jar $(LIGHT_CAMERA_FILES)
	mkdir -p $@
	cp -r light_camera/assets $@
	cp -r light_camera/original $@
	cp -r light_camera/res $@
	cp -r light_camera/AndroidManifest.xml $@
	cp -r light_camera/apktool.yml $@
	$(UNZIP) -j build/classes2.jar "classes.dex" -d $@

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
