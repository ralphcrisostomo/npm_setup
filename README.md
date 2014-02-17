# Overview

Shell scripts for the installation of commonly used NPM packages.

Sometimes, when setting up a new machine, there is a need for automating the install of commonly used packages
(i.e. setting up your toolbox). This solves that problem by providing a master list of commonly used packages which
can be installed via a single command.

# Features

Installs the following packages (only if not already installed):

* [Katon](https://github.com/typicode/katon)
* [imacss](https://github.com/akoenig/imacss)

# Requirements

* [OSX](http://www.apple.com/osx), Linux, or UNIX.
* [Git](http://git-scm.com).
* [NPM](https://www.npmjs.org).

# Setup

Open a terminal window and execute one of the following depending on your version preference:

Current Version (stable):

    git clone git://github.com/bkuhlmann/npm_setup.git
    cd npm_setup
    git checkout v0.1.0

Master Version (unstable):

    git clone git://github.com/bkuhlmann/npm_setup.git
    cd npm_setup

# Usage

Edit the settings/packages.txt as you see fit. Blank lines and lines that begin with '#' will be ignored.
Then open a terminal window to execute the following command:

    ./run.sh

Running the script will present the following options:

    i: Install packages.
    q: Quit/Exit.

Choose option 'i' to install.

The options prompt can be skipped by passing the desired option directly to the run.sh script.
For example, executing "./run.sh i" will execute the install.

# Versioning

Read [Semantic Versioning](http://semver.org) for details. Briefly, it means:

* Patch (x.y.Z) - Incremented for small, backwards compatible bug fixes.
* Minor (x.Y.z) - Incremented for new, backwards compatible public API enhancements and/or bug fixes.
* Major (X.y.z) - Incremented for any backwards incompatible public API changes.

# Contributions

Read CONTRIBUTING for details.

# Credits

Developed by [Brooke Kuhlmann](http://www.redalchemist.com) at [Red Alchemist](http://www.redalchemist.com)

# License

Copyright (c) 2014 [Red Alchemist](http://www.redalchemist.com).
Read the LICENSE for details.

# History

Read the CHANGELOG for details.
