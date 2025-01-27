#!/bin/bash

# Define paths for JDK versions
JDK8="/path/to/jdk1.8.0"  # Update this path to your Java 8 installation
JDK17="/path/to/jdk17"    # Update this path to your Java 17 installation

# Switch based on the input argument
case "$1" in
    "8")
        export JAVA_HOME=$JDK8
        ;;
    "17")
        export JAVA_HOME=$JDK17
        ;;
    *)
        echo "Unknown JDK version! Specify 8 or 17!"
        exit 1
        ;;
esac

# Update the PATH variable
export PATH="$JAVA_HOME/bin:$PATH"

# Output the currently used Java version
java -version
