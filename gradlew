#!/usr/bin/env sh

# Ensure we have a gradle distribution
if [ -z $GRADLE_HOME ]; then
  GRADLE_HOME=$(dirname $0)gradle
fi

# Load the Gradle environment
if [ -f $GRADLE_HOMEbingradle ]; then
  exec $GRADLE_HOMEbingradle $@
else
  echo Cannot find gradle in $GRADLE_HOME
  exit 1
fi
