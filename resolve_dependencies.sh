#!/bin/bash
# This is an auto-generated file by Wise-Java-Platform to enable updating dependency locks for all subprojects with one command
# This script should be put under version control

set -e

echo '##### Running command: ./gradlew refreshResolveDependenciesScript --no-parallel --stacktrace --write-locks "$@"'
./gradlew refreshResolveDependenciesScript --no-parallel --stacktrace --write-locks "$@"

source build/resolve_dependencies_include.sh
