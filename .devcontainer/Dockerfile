# Use a base image that already has some common dev tools and sets up the 'vscode' user.
FROM mcr.microsoft.com/devcontainers/base:ubuntu-22.04

# Avoid interactive prompts during package installation
ENV DEBIAN_FRONTEND=noninteractive

# Essential environment variables
ENV JAVA_HOME=/usr/lib/jvm/java-21-openjdk-amd64
ENV ANDROID_HOME=/opt/android-sdk
ENV FLUTTER_HOME=/opt/flutter
ENV PATH=${PATH}:${JAVA_HOME}/bin:${ANDROID_HOME}/cmdline-tools/latest/bin:${ANDROID_HOME}/platform-tools:${FLUTTER_HOME}/bin

# 1. Install System Dependencies, Java 21, and Node.js LTS
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    curl \
    git \
    unzip \
    zip \
    xz-utils \
    libglu1-mesa \
    libc6:amd64 \
    libstdc++6:amd64 \
    libbz2-1.0:amd64 \
    openjdk-21-jdk-headless \
    && curl -fsSL https://deb.nodesource.com/setup_lts.x | bash - \
    && apt-get install -y nodejs \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# 2. Install Android Command Line Tools
# Download URL for the latest command-line tools can be found at https://developer.android.com/studio#command-tools
RUN mkdir -p ${ANDROID_HOME}/cmdline-tools \
    && curl -L https://dl.google.com/android/repository/commandlinetools-linux-11076708_latest.zip -o /tmp/cmdline-tools.zip \
    && unzip /tmp/cmdline-tools.zip -d ${ANDROID_HOME}/cmdline-tools \
    && mv ${ANDROID_HOME}/cmdline-tools/cmdline-tools ${ANDROID_HOME}/cmdline-tools/latest \
    && rm /tmp/cmdline-tools.zip

# 3. Accept Android Licenses and Install Basic SDK Components
# We use 'yes |' to automatically accept licenses.
RUN yes | sdkmanager --licenses \
    && sdkmanager "platform-tools" "platforms;android-34" "build-tools;34.0.0"

# 4. Install Flutter SDK (Stable Channel)
RUN git clone https://github.com/flutter/flutter.git -b stable --depth 1 ${FLUTTER_HOME} \
    && chown -R vscode:vscode ${FLUTTER_HOME} ${ANDROID_HOME}

# 5. Pre-cache Flutter binaries for the vscode user
# Switch to the vscode user to ensure that the caches are owned correctly.
USER vscode
RUN flutter precache --linux --no-android --no-ios

# Final cleanup and setup
USER root
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

USER vscode
WORKDIR /workspaces/ironit-mobile

# Set the default shell to bash
ENV SHELL=/bin/bash
