# Compro Utils

This is a set of command-line scripts for various parts of the Drupal build
process.

The commands below can be executed as "compro command" or "compro-command".

## Install

You can execute any of the bash scripts directly, or set it up to work
globally, with custom configs.

### Set global

Ensure that the bin/ directory is in your $PATH. In ~/.bashrc (or other rc)

  > PATH="$HOME/repos/compro_utils/bin:$PATH"

...making sure the path to the bin directory is correct.

Be sure to source your rc file to apply the changes.

### Custom configs

Copy the .compro file to your home directory:

  > cp .compro ~/.compro

You can then change the variables in that file to your liking.

Be sure to append new values any time you pull a new version of the repo,
though the scripts will always run with reasonable defaults.

## Commands
