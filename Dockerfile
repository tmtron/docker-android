FROM openjdk:8-jdk

MAINTAINER martin@tmtron.com

ARG ANDROID_COMPILE_SDK="25"
ARG ANDROID_BUILD_TOOLS="25.0.2"
  # to find new versions check these pages:
  # http://androidsdkoffline.blogspot.co.at/p/android-sdk-tools.html
  # https://developer.android.com/studio/releases/sdk-tools.html
ARG ANDROID_SDK_TOOLS="25.2.5"
ARG CONSTRAINT_LAYOUT_VERSION="1.0.2"

# to see a list of all available packages run this command:
# android-sdk/tools/bin/sdkmanager --verbose --list
RUN apt-get update \
 && apt-get install -y wget \
 && wget --quiet --output-document=android-sdk.zip https://dl.google.com/android/repository/tools_r${ANDROID_SDK_TOOLS}-linux.zip \
 && unzip android-sdk.zip -d android-sdk \
 && echo y | android-sdk/tools/bin/sdkmanager "platforms;android-${ANDROID_COMPILE_SDK}" \
 && echo y | android-sdk/tools/bin/sdkmanager "platform-tools" \
 && echo y | android-sdk/tools/bin/sdkmanager "build-tools;${ANDROID_BUILD_TOOLS}" \
 && echo y | android-sdk/tools/bin/sdkmanager "extras;android;m2repository" \
 && echo y | android-sdk/tools/bin/sdkmanager "extras;google;google_play_services" \
 && echo y | android-sdk/tools/bin/sdkmanager "extras;google;m2repository" \
 && echo y | android-sdk/tools/bin/sdkmanager "extras;m2repository;com;android;support;constraint;constraint-layout;${CONSTRAINT_LAYOUT_VERSION}" \
 && echo y | android-sdk/tools/bin/sdkmanager "extras;m2repository;com;android;support;constraint;constraint-layout-solver;${CONSTRAINT_LAYOUT_VERSION}" \
 && rm -rf /tmp/* 

