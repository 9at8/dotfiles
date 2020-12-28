#!/usr/bin/env bash

set -e

# Install pacapt
./pacapt.sh

# Install fish and continue there
yes | sudo pacapt -S fish
./install.fish
