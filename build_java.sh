#!/bin/bash

rm -rf .temp/

# Build without the java files
rm -rf light_camera/build/
apktool b light_camera -o .temp/stage1.apk

# extract the dex so javafiles can be build against it.
rm -rf .temp/classes.dex
unzip -j .temp/stage1.apk "classes.dex" -d .temp/

# convert dex to jar so java files can be build from it
tools/dex-tools/d2j-dex2jar.sh .temp/classes.dex -o .temp/classes.jar --force

#compile all the java files
export PATH=$PATH:/usr/lib/jvm/java-17-openjdk/bin/
shopt -s globstar
javac -d .temp/out/ -cp ~/Android/Sdk/platforms/android-34/android.jar:.temp/classes.jar $(find src/ -iname "*.java") -Xlint:unchecked

# build jar file from classes and dex

$HOME/Android/Sdk/build-tools/34.0.0/d8 --output .temp/classes2.jar .temp/classes.dex $(find .temp/out -iname "*.class")

# make a clean directory to transplant new dex file
# rm -rf .temp/build
mkdir .temp/build
cp -r light_camera/{assets,original,res,AndroidManifest.xml,apktool.yml} .temp/build/

# transplat the dex file
unzip -j .temp/classes2.jar "classes.dex" -d .temp/build/

# continue to normal build and install
apktool b .temp/build -o openlight_camera.apk
apksigner sign --ks ../my-release-key.keystore --in openlight_camera.apk --ks-pass file:../pass
# adb uninstall openlight.co.lightcamera
# adb install openlight_camera.apk
# echo "Logging to debug.log..."
# adb logcat > debug.log
