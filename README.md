# streaming-engine-template

Streaming Engine Template Repository.

Wise Stream Processing framework documentation can be found [here](https://wise-stream-processing.tw.ee/).

Also check out Stream Processing Knowledge Base [wiki](https://transferwise.atlassian.net/wiki/spaces/SPKB).

## Guides

### Wise Java Platforms Integration

Project is integrated with [wise-java-platforms](https://github.com/transferwise/wise-java-platforms).
Integration between Wise Stream Processing and Wise Java Platforms is happening via `wise.stream.processing.settings`
Gradle plugin. You can read
more about it [here](https://wise-stream-processing.tw.ee/docs/changelog/1.7.0). If you'd like to move existing project
to Wise Java Platforms
read [this wiki page](https://github.com/transferwise/streaming-engine-template/wiki/Migrating-existing-streaming-engine-to-Wise-Java-Platforms).

### Upgrading to Wise Stream Processing 1.8.X with Spring Boot 3.2.X

Refer
to [this guide](https://github.com/transferwise/streaming-engine-template/wiki/Upgrading-Wise-Stream-Processing-to-1.8-With-Spring-Boot-3.2.X)
on how to upgrade your streaming pipeline project to Wise Stream Processing 1.8.X which comes with Spring Boot 3.2.X.

## Project

### Java Version Compatibility
Wise Stream Processing with Kafka Streams engine supports Java 17. Wise Stream Processing with Flink supports up to Java 11.
This is because Flink runtime itself doesn't support beyond Java 11 yet. This will change with Flink 1.18 adoption.
Below is the compatibility matrix:

|             | **stream-processing-execution-engine: KAFKA_STREAMS** | **stream-processing-execution-engine: FLINK** |
|-------------|-------------------------------------------------------|-----------------------------------------------|
| **Java 11** |                           ✅                           |                       ✅                       |
| **Java 17** |                           ✅                           |                       ✅                       |
| **Java 21** |                           ✅                           |                       ❌                       |

### Gradle Support
Wise Stream Processing ships with some crucial Gradle plugins. Below matrix shows which gradle versions we support:

|              | **Supported** |
|--------------|---------------|
| **Gradle 6** |       ✅       |
| **Gradle 7** |       ✅       |
| **Gradle 8** |       ✅       |
| **Gradle 9** |       ❌       |

#### Upgrading gradle

In order to upgrade Gradle, you can run the following command: `./gradle/upgrade_gradle.sh <new_gradle_version>`. This
command will automatically download new Gradle wrapper, as well as configure the project to use the new version.

### Linting and Code Style

Template uses common code standard that we've been using with Streaming Engine development. All the linting related
configurations are located in the `code-quality` directory. Feel free to remove or replace existing configurations with
your own one if you don't feel that style is suitable for you. Project also has `.editorconfig` file that you may want
to adjust/replace based on your needs.

#### Git hooks

Project will try to install git-hooks that will execute code style checks (spotbugs, codenarc, checkstyle) before
pushing to remote branch. You can install git hooks by running `./gradlew installGitHooks` task. If you don't want to
have git hooks locally you can:

1. Execute `./gradlew removeGitHooks`.
2. Remove `common.install-git-hooks` gradle plugin from the root project's `build.gradle`.

### Kubernetes Manifests

`kubernetes-manifests` directory contains sample manifest for the streaming-server deployments. Please always refer to
this example in order to keep track with the best practices around how to deploy streaming-server in our Kubernetes
environment.
