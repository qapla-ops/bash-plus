#!/bin/bash
export BIN_FOLDER=/usr/local/bin
export CMD_PREFIX

if [ -z $1 ]; then
  CMD_PREFIX="bp"
else
  CMD_PREFIX=$1
fi

echo $CMD_PREFIX
echo $BIN_FOLDER

# Install all scripts in /usr/local/bin
find bash -type f -exec sh -c 'cp {} $BIN_FOLDER/$CMD_PREFIX-$(basename {})' \;