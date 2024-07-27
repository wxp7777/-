#!/usr/bin/env sh
BASE_DIR=$(dirname "$0")
exec "$BASE_DIR/gradle/wrapper/gradle-wrapper.jar" "$@"
