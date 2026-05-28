#!/bin/bash
# This is an auto-generated file by Wise-Java-Platform to enable running any Gradle task against all supported versions of wise-boot-platform artifacts in a library project
# This script should be put under version control

set -e

COMMAND="$@"
BOOT_PLATFORM_ARTIFACT=wise-boot-3.3-dependencies
echo "##### Running $COMMAND with $BOOT_PLATFORM_ARTIFACT #####"
"$@" "-PwiseJavaLibraryBootPlatformArtifact=$BOOT_PLATFORM_ARTIFACT"
BOOT_PLATFORM_ARTIFACT=wise-boot-3.4-dependencies
echo "##### Running $COMMAND with $BOOT_PLATFORM_ARTIFACT #####"
"$@" "-PwiseJavaLibraryBootPlatformArtifact=$BOOT_PLATFORM_ARTIFACT"
