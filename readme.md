# Compro Utils

This is a set of command-line scripts for various parts of the Drupal build 
process.

The commands below can be executed as "compro command" or "compro-command".

## Commands

### alias

Add a drush alias to a site

 > Usage: compro-alias -t dev
 
**-t** lets you set the (dotless) TLD

### bitbucket

Create/push a bitbucket repo. Prompts if defaults aren't set in ~/.compro

### ctf

Create a feature containing a content type and view named after it.

### db

Create a mysql db for a site. Prompts if defaults aren't set in ~/.compro

**-u** lets you set the MySQL user

### fs

Set sensible file permissions (644 for files, 755 for directories).

### git

init and commit to a git repo. Set git to ignore chmod changes. Renames master to stage.

### hosts

Add the site to the hosts file

**-i** lets you set an alternative IP (defaults to 127.0.0.1)

**-t** lets you set the (dotless) TLD

### install

install a site with drush

**-u** lets you set the MySQL user

### make

download compro\_install\_profile to a directory you name.

 > Usage: compro-make newprojectname

### prep

create sites/default stuff.

### server

Add virtualhost to web server.

  * **-i** lets you set the local IP (defaults to 127.0.0.1)
  * **-p** lets you set how PHP FastCGI is passed (defaults to 127.0.0.1:9000)
  * **-s** lets you choose between apache and nginx (defaults to nginx)
  * **-t** lets you choose the (dotless) TLD

### site

Run most of the other commands and initialize a whole site.

 > Usage: compro-site -options newprojectname

**-b** runs compro-bitbucket in the process

## Install

You can execute any of the bash scripts directly, or set it up to work 
globally, with custom configs.

### Set global

Ensure that the bin/ directory is in your $PATH. In ~/.bashrc (or other rc)

  > PATH="$HOME/repos/compro_utils/bin:$PATH"

...making sure the path to the bin directory is correct.

### Custom configs

Copy the .compro file to your home directory:

  > cp .compro ~/.compro

You can then change the variables in that file to your liking.

Be sure to append new values any time you pull a new version of the repo, 
though the scripts will always run with reasonable defaults.