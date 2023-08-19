#!/bin/bash

# Check if sketch name is provided
if [ -z "$1" ]; then
  echo "Error: You must provide the sketch name as the first argument"
  exit 1
fi
sketchName="$1"

# Set directories
sourceDirectory="src"
dataDirectory="data"
sketchDirectory="sketch"

# Clean destination directory
rm -rf "$sketchDirectory"
mkdir "$sketchDirectory"

# Make project directory
sketchDirectory="$sketchDirectory/$sketchName"
mkdir "$sketchDirectory"

# Copy data files
cp -r "$dataDirectory" "$sketchDirectory"

# Function to move files recursively
moveFiles() {
  origenDirectory=$1
  destinationDirectory=$2

  for archivo in "$origenDirectory"/*; do
    if [ -f "$archivo" ]; then
      cp "$archivo" $destinationDirectory
    elif [ -d "$archivo" ]; then
      moveFiles "$archivo" $destinationDirectory
    fi
  done
}

# Copy source files recursively
moveFiles $sourceDirectory $sketchDirectory

# Run project
processing-java --sketch="$sketchDirectory" --run
