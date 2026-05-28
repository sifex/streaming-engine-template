#!/bin/bash

set -e

commands=("spotbugsAll" "checkstyleAll" "codenarcAll")

on_err() {
    echo "******** FAILED $1 ********"
    echo "Failed while running command: $1"
    echo "******** FAILED $1 ********"
    exit 1
}

run_gradle_commands() {
    start_time=$(date +%s)

    for command in "${commands[@]}"; do
      echo "Running $command"
      ./gradlew "$command" || on_err $command;
    done

    end_time=$(date +%s)
    elapsed=$(( end_time - start_time ))

    echo "************** SUCCESS **************"
    echo "Finished executing tasks '${commands[*]}'."
    echo "It took $elapsed seconds to finish."
    echo "************** SUCCESS **************"
}

main() {
    run_gradle_commands
}

main