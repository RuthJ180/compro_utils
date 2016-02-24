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
### compro-alias

Add a drush alias to a site

#### Usage

  > compro-alias -t dev

#### Flags

**h** Get help info
**t** Lets you set the (dotless) TLD

### compro-aliases

Get a selectable list of drush aliases for a site.

#### Usage

  > compro-aliases

#### Flags

**h** Get help info

### compro-bitbucket

Create/push a bitbucket repo. Prompts if defaults aren't set in ~/.compro.

#### Usage

  > compro-bitbucket

#### Flags

**h** Get help info
**r** Specify a remote other than origin

### compro-branches

Get a selectable list of git branches for a repo.

#### Usage

  > compro-branches

#### Flags

**h** Get help info

### compro-coreversion

Output the major version number of Drupal in the directory, or 0 if none.

#### Usage

  > compro-coreversion

#### Flags

**h** Get help info

### compro-ctf

Create a feature containing a content type and view named after it.

#### Usage

  > compro-ctf

#### Flags

**h** Get help info
**p** Set the feature name prefix. Will be site name by default
**t** [prompted otherwise] Set the machine name of the content type

### compro-curl-update

Send a summary of core/module updates to the drupalcare server.

#### Usage

  > compro-curl-update

#### Flags

**h** Get help info

### compro-db

Create a mysql db for a site. Prompts if defaults aren't set in ~/.compro

#### Usage

  > compro-db

#### Flags

**h** Get help info
**u** Override or set the MySQL user (usually root) for this command
**x** Uninstall the database

### compro-dl

Download a project from bitbucket and place it somewhere intelligently.

#### Usage

  > compro-dl [Optional REPONAME]

#### Flags

**g** Set the desired branch of the repo
**h** Get help info
**r** Set to keep the .git/ repo in place

### compro-ebf

Create an eck bundle feature containing a view.

#### Usage

  > compro-ebf

#### Flags

**h** Get help info
**p** Set the prefix for the feature name (defaults to site name)
**t** [prompted] Set the machine name of the entity bundle

### compro-existing

Install a local copy of an existing site.

#### Usage

  > compro-existing reponame

#### Flags

**a** The alias to pull database/files from
**h** Get help info
**o** Turn off the creation of an /etc/hosts entry
**s** Turn off the creation of a web server virtualhost

### compro-fs

Set file permissions for a Drupal site.

#### Usage

  > compro-fs

#### Flags

**h** Get help info

### compro-git

Init a git repo in a directory.

#### Usage

  > compro-git

#### Flags

**h** Get help info

### compro-hosts

Create or remove an entry in /etc/hosts for the site in question.

#### Usage

  > compro-hosts

#### Flags

**h** Get help info
**i** Set the host IP
**t** Override the default TLD for the host
**x** Remove the entry instead of adding it

### compro-htrobots

Download appropriate .htaccess and robots.txt files for the environment.

#### Usage

  > compro-htrobots

#### Flags

**h** Get help info

### compro-install

Install a drupal site using drush.

#### Usage

  > compro-install

#### Flags

**h** Get help info
**u** Override the default MYSQL user (root) for the install process

### compro-loop

Loop through a directory of [Drupal site] directories and run commands.

#### Usage

  > compro-loop drush status

#### Flags

**h** Get help info

### compro-make

Build out a Drupal site from the compro_install_profile.

#### Usage

  > compro-make newprojectname

#### Flags

**g** Choose the branch to use
**h** Get help info

### compro-prep

Make sure things like sites/default/files and settings.php exist.

#### Usage

  > compro-prep

#### Flags

**h** Get help info

### compro-server

Set up a web server for the [Drupal] site in the current directory.

#### Usage

  > compro-server

#### Flags

**h** Get help info
**i** Set the desired listening IP
**p** Set the IP:port for PHP fastcgi
**s** Choose a web server (either apache or nginx)
**t** Set the desired TLD
**x** Remove the web server instead of creating one

### compro-settings

Download and fill out a settings.php that is appropriate for the environment.

#### Usage

  > compro-settings

#### Flags

**e** Provide the desired environment ('local' or 'server') instead of choosing interactively
**h** Get help info
**u** Provide the MySQL username, if other than root

### compro-site

Go from zero to a working drupal site, or a drupal site to zero.

#### Usage

  > compro-site sitename

#### Flags

**b** Upload new project to bitbucket
**g** Specify a git branch for the site ahead of time
**h** Get help info
**x** Uninstall a site instead

### compro-ssh

List ssh hosts, or add a new one.

#### Usage

  > compro-ssh

#### Flags

**a** Add a host entry
**h** Get help info
**i** Set the path to the private key to use (defaults to ~/.ssh/id_rsa)
**n** Change the name (defaults to the present working directory)
**o** Specify the hostname ahead of time
**p** Specify a port
**u** Specify the user ahead of time

### compro-sync

Grab a site's db/files from one of the remote drush aliases.

#### Usage

  > compro-sync

#### Flags

**a** Specify the alias ahead of time (otherwise interactive)
**h** Get help info

### compro-tvf

Create a feature with a taxonomy vocabulary and a corresponding view.

#### Usage

  > compro-tvf

#### Flags

**h** Get help info
**p** Set the prefix for the feature name (defaults to site name)
**t** [prompted] Set the machine name of the taxonomy vocabulary

### compro-up

Do core and module updates using the 'build' workflow.

#### Usage

  > compro-up

#### Flags

**h** Get help info
**s** Only do security updates

