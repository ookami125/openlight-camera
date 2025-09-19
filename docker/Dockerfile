FROM alpine:3.22.1

RUN apk update && apk add --no-cache bash make openjdk17 gosu zip
RUN mkdir /tools/

# Download and setup apktool
RUN wget -O /tools/apktool.jar https://bitbucket.org/iBotPeaches/apktool/downloads/apktool_2.9.3.jar
RUN wget -O /tools/apktool https://raw.githubusercontent.com/iBotPeaches/Apktool/master/scripts/linux/apktool && chmod +x /tools/apktool
ENV APKTOOL=/tools/apktool

# Download and setup dex tools
RUN wget -O /tools/dex-tools.zip https://github.com/pxb1988/dex2jar/releases/download/v2.4/dex-tools-v2.4.zip
RUN unzip /tools/dex-tools.zip -d /tools/
RUN mv /tools/dex-tools-v2.4 /tools/dex-tools
RUN rm /tools/dex-tools.zip
ENV DEX2JAR=/tools/dex-tools/d2j-dex2jar.sh

# Download and setup android build tools
RUN wget -O /tools/build-tools.zip https://dl.google.com/android/repository/build-tools_r34-linux.zip
RUN unzip /tools/build-tools.zip -d /tools/
RUN rm /tools/build-tools.zip
RUN mv /tools/android-14 /tools/build-tools
ENV D8=/tools/build-tools/d8
ENV APKSIGNER=/tools/build-tools/apksigner

# Download and setup android.jar
RUN mkdir /android
RUN wget -O /android/android.jar https://github.com/Sable/android-platforms/raw/refs/heads/master/android-34/android.jar
ENV ANDROID_JAR=/android/android.jar

# setup extras
ENV UNZIP_EXE=unzip
ENV JAVAC_EXE=javac

RUN chmod 777 /home

WORKDIR /workspace

COPY docker/entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]