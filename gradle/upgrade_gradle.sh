#!/bin/bash

set -Eeo pipefail

SCRIPT_DIR=${BASH_SOURCE%/*}
NEW_GRADLE_VERSION="$1"
GRADLE_VERSION_FILE_LOCATION="$SCRIPT_DIR"/gradle.version

function upgrade_gradle() {
  "$SCRIPT_DIR"/../gradlew wrapper --gradle-version "$NEW_GRADLE_VERSION" && "$SCRIPT_DIR"/../gradlew wrapper
}

function change_gradle_version() {
  echo "$NEW_GRADLE_VERSION" >"$GRADLE_VERSION_FILE_LOCATION"
}

function main() {
  if [ -z "$NEW_GRADLE_VERSION" ]; then
    echo "ERROR: New gradle version is not set."
    exit 1
  fi

  if [ -f "$GRADLE_VERSION_FILE_LOCATION" ]; then
    echo "$GRADLE_VERSION_FILE_LOCATION exists."
    change_gradle_version
    upgrade_gradle
  else
    echo "ERROR: $GRADLE_VERSION_FILE_LOCATION does not exist."
    exit 1
  fi
}

main
