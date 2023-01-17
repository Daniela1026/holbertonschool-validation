# Prerequisites

* Shell terminal basics

* Git with the command line
* Make/Makefile usage
* A HTML5-compliant web browser
* A free account on GitHub, referenced as `<GitHub Handle>`
* A shell terminal with `bash` `zsh` or `ksh`, including the standard Unix
toolset (`ls`, `cd`, etc.) with:
  * GNU Make in version 3.81+
  * Git (command line) in version 2+
  * `Go Hugo` v0.80+
* The student needs to be able to spawn up a clean Ubuntu 18.04 system.
Therefore Docker is recommended with NO prior knowledge.
* A text editor or IDE (Integrated Development Editor) of your convenience
(Visual Code, Notepad++, Vim, Emacs, IntelliJ, etc.)

## Lifecycle

* `build` : Generate the website from the markdown and configuration files in
the directory `dist/`.
* `clean` : Cleanup the content of the directory `dist/`
* `post` : Create a new blog post whose filename and title come from the
environment variables `POST_TITLE` and `POST_NAME`.
* `help` : prints out the list of targets and their usage.
* `lint` : Print the yaml file
* `package` : Produces a file awesome-website.zip, containing the binary
awesome-api and the directory dist/ directory
* `unit-tests`: Documentation must be up to date according to the new make
targets (Makefile and README.md)
* `integration-tests`: ## ERROR: No comment found for target integration-tests
in `./Makefile`
* `validate`: ## ERROR: No comment found for target validate in `./Makefile`

## Workflow

This project needs the following tools / services:

* The command lines
  * yq
  * shellcheck

## Build Workflow

Regarding the tooling, you have to:

* Ensure that the workflow is executed into an Ubuntu 18.04 execution
environment
* Ensure that all the required tools are installed prior to any make target,
by executing the script setup.sh
  * The script should be modified to only install missing tools
  * (no make target are expected)
