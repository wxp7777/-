#!/usr/bin/env sh
BASE_DIR=$(dirname "$0")
exec java -classpath "$BASE_DIR/gradle/wrapper/gradle-wrapper.jar" org.gradle.wrapper.GradleWrapperMain "$@"
