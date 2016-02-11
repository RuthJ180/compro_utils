#!/usr/bin/env bash

set -o errexit
set -o pipefail
set -o nounset
# set -o xtrace

# Put the readme header in place using a copy command.
cp _docs/intro.md readme.md

# Loop through the commands and call their -h versions.
for cmd in $(ls -1 bin/ | grep compro-)
do
  $cmd -h >> readme.md
done
