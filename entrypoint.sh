#!/bin/bash

# Fail if any commands fails
set -e
# Echo the commands being executed
set -x

# Connect to the remote server and execute a command
sshpass -p $INPUT_PASSWORD ssh -vvv -o StrictHostKeyChecking=no -p $INPUT_PORT $INPUT_USERNAME@$INPUT_HOST "$INPUT_SCRIPT"