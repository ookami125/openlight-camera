#!/bin/bash

echo "Changing to tools directory!"
cd tools

echo "Downloading required tools"
wget https://bitbucket.org/iBotPeaches/apktool/downloads/apktool_2.9.3.jar
wget https://raw.githubusercontent.com/iBotPeaches/Apktool/master/scripts/linux/apktool
wget https://github.com/pxb1988/dex2jar/releases/download/v2.4/dex-tools-v2.4.zip
unzip dex-tools-v2.4.zip

echo "Renaming tools to match expected names"
mv apktool_2.9.3.jar apktool.jar
mv dex-tools-v2.4 dex-tools
chmod 777 apktool
rm dex-tools-v2.4.zip
