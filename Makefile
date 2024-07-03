include .env

OUTPUT_NAME := openlight_camera.apk

SOURCEDIR := src/
STAGE2_BUILDDIR := build/stage2/
STAGE3_BUILDDIR := build/stage3/

LIGHT_CAMERA_FILES := $(wildcard light_camera/*)
JAVA_FILES := $(shell find $(SOURCEDIR) -name '*.java')
CLASS_FILES := $(addprefix $(BUILDDIR)/,$(SOURCES:%.java=%.class))

.PHONY: clean
clean:
	rm -rf build

build/stage1.apk: $(LIGHT_CAMERA_FILES)
	rm -rf light_camera/build/
	$(APKTOOL) b light_camera -o $@

build/classes.dex: build/stage1.apk
	$(UNZIP) -oj build/stage1.apk "classes.dex" -d build/
	touch $@

build/classes.jar: build/classes.dex
	$(DEX2JAR) build/classes.dex -o $@ --force

$(STAGE2_BUILDDIR): build/classes.jar $(JAVA_FILES)
	$(JAVAC) -d $@ -cp $(ANDROID.JAR):build/classes.jar $(JAVA_FILES) "-Xlint:unchecked"

build/classes2.jar: $(STAGE2_BUILDDIR) build/classes.dex $(CLASS_FILES)
	$(D8) --output $@ build/classes.dex $(CLASS_FILES)

$(STAGE3_BUILDDIR): build/classes2.jar $(LIGHT_CAMERA_FILES)
	mkdir -p $@
	cp -r light_camera/{assets,original,res,AndroidManifest.xml,apktool.yml} $@
	$(UNZIP) -j build/classes2.jar "classes.dex" -d $@

$(OUTPUT_NAME): $(STAGE3_BUILDDIR)
	$(APKTOOL) b $(STAGE3_BUILDDIR) -o $@
	apksigner sign --ks .private/my-release-key.keystore --ks-pass file:.private/pass --in $@

.PHONY: install
install: $(OUTPUT_NAME)
	adb install -r $(OUTPUT_NAME)

.PHONY: all
all: $(OUTPUT_NAME)