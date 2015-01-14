# Compro Utils

This is a set of command-line scripts for various parts of the Drupal build 
process.

## Commands

@TODO: document commands

## Install

You can execute any of the bash scripts directly, or set it up to work 
globally, with custom configs.

### Set global

Ensure that the bin/ directory is in your $PATH. In ~/.profile

  > PATH="$HOME/repos/compro_utils/bin:$PATH"

...making sure the path to the bin directory is correct.

### Custom configs

Copy the .compro file to your home directory:

  > cp .compro ~/.compro

You can then change the variables in that file to your liking.

Be sure to append new values any time you pull a new version of the repo, 
though the scripts will always run with reasonable defaults.