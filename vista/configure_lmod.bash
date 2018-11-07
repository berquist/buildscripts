#!/usr/bin/env bash

# `configure' configures this package to adapt to many kinds of systems.

# Usage: ./configure [OPTION]... [VAR=VALUE]...

# To assign environment variables (e.g., CC, CFLAGS...), specify them as
# VAR=VALUE.  See below for descriptions of some of the useful variables.

# Defaults for the options are specified in brackets.

# Configuration:
#   -h, --help              display this help and exit
#       --help=short        display options specific to this package
#       --help=recursive    display the short help of all the included packages
#   -V, --version           display version information and exit
#   -q, --quiet, --silent   do not print `checking ...' messages
#       --cache-file=FILE   cache test results in FILE [disabled]
#   -C, --config-cache      alias for `--cache-file=config.cache'
#   -n, --no-create         do not create output files
#       --srcdir=DIR        find the sources in DIR [configure dir or `..']

# Installation directories:
#   --prefix=PREFIX         install architecture-independent files in PREFIX
#                           [/usr/local]
#   --exec-prefix=EPREFIX   install architecture-dependent files in EPREFIX
#                           [PREFIX]

# By default, `make install' will install all the files in
# `/usr/local/bin', `/usr/local/lib' etc.  You can specify
# an installation prefix other than `/usr/local' using `--prefix',
# for instance `--prefix=$HOME'.

# For better control, use the options below.

# Fine tuning of the installation directories:
#   --bindir=DIR            user executables [EPREFIX/bin]
#   --sbindir=DIR           system admin executables [EPREFIX/sbin]
#   --libexecdir=DIR        program executables [EPREFIX/libexec]
#   --sysconfdir=DIR        read-only single-machine data [PREFIX/etc]
#   --sharedstatedir=DIR    modifiable architecture-independent data [PREFIX/com]
#   --localstatedir=DIR     modifiable single-machine data [PREFIX/var]
#   --libdir=DIR            object code libraries [EPREFIX/lib]
#   --includedir=DIR        C header files [PREFIX/include]
#   --oldincludedir=DIR     C header files for non-gcc [/usr/include]
#   --datarootdir=DIR       read-only arch.-independent data root [PREFIX/share]
#   --datadir=DIR           read-only architecture-independent data [DATAROOTDIR]
#   --infodir=DIR           info documentation [DATAROOTDIR/info]
#   --localedir=DIR         locale-dependent data [DATAROOTDIR/locale]
#   --mandir=DIR            man documentation [DATAROOTDIR/man]
#   --docdir=DIR            documentation root [DATAROOTDIR/doc/PACKAGE]
#   --htmldir=DIR           html documentation [DOCDIR]
#   --dvidir=DIR            dvi documentation [DOCDIR]
#   --pdfdir=DIR            pdf documentation [DOCDIR]
#   --psdir=DIR             ps documentation [DOCDIR]

# Optional Packages:
#   --with-PACKAGE[=ARG]    use PACKAGE [ARG=yes]
#   --without-PACKAGE       do not use PACKAGE (same as --with-PACKAGE=no)
#   --with-duplicatePaths=ans
#                           Allow duplicate directories in path like variables
#                           [[no]]
#   --with-siteMsgFile=ans  Site Message File [[<empty>]]
#   --with-lang=ans         Override $LANG for Lmod errors/messsages/warnings
#                           [[<empty>]]
#   --with-caseIndependentSorting=ans
#                           Make avail and spider use case independent sorting
#                           [[no]]
#   --with-colorize=ans     allow for colorized output [[yes]]
#   --with-hiddenItalic=ans Use italic for hidden module instead of faint[[no]]
#   --with-exactMatch=ans   require exact match, disable defaults [[no]]
#   --with-autoSwap=ans     Allow auto swapping of compiler etc. [[yes]]
#   --with-exportedModuleCmd=ans
#                           Export the module command. [[yes]]
#   --with-redirect=ans     redirect messages to stdout [[no]]
#   --with-module-root-path=<path>
#                           use module root path=<path> [[PREFIX/modulefiles]]
#   --with-ancient=num_secs How long to wait before rebuilding spider cache
#                           file=num_secs [[86400]]
#   --with-shortTime=seconds
#                           if spider build time < shortTime then no spider
#                           cache file [[2]]
#   --with-useDotFiles=yes/no
#                           If yes use ~/.lmod.d/.cache, if no use
#                           ~/.lmod.d/__cache__
#   --with-spiderCacheDir=dir1:dir2
#                           use these directories to hold a spider cache file
#                           [[]]
#   --with-spiderCacheDescript=fn
#                           Use specified file to describe cache directory and
#                           timestamp files [[]]
#   --with-updateSystemFn=file
#                           This file is touched when the system has been
#                           updated [[]]
#   --with-prependBlock=ans Treat multiple directories passed to prepend in
#                           normal order/ not reversed [[NORMAL]]
#   --with-siteName=ans     Site Name [[<empty>]]
#   --with-syshost=ans      Site Name [[<empty>]]
#   --with-tcl=ans          Allow TCL modulefiles [[yes]]
#   --with-disableNameAutoSwap=ans
#                           disable one name rule autoswapping [[no]]
#   --with-mpathSearch=ans  include modulepath directory name in avail searching
#                           [[no]]
#   --with-settarg=ans      startup files fully support settarg [[no]]
#   --with-ignoreDirs=ans   list of directories to ignore [[.svn,.git,.hg,.bzr]]
#   --with-pinVersions=ans  Save/Restore will use the current version instead of
#                           changing with the default.[[no]]
#   --with-tmodPathRule=ans If path entry is already there then do not
#                           append/prepend.[[no]]
#   --with-tmodFindFirst=ans
#                           Use Tmod Find First rule instead of Find Best for
#                           defaults.[[no]]
#   --with-lua_include=ans  Save/Restore will use the current version instead of
#                           changing with the default.[[no]]
#   --with-cachedLoads=ans  Use cache when loading modules. [[no]]
#   --with-ModulePathInit=ans
#                           File containing initial MODULEPATH directories
#   --with-siteControlPrefix=ans
#                           A user controlled prefix. [[no]]
#   --with-useBuiltinPkgs=ans
#                           Use Built-in lua package instead of system ones.
#                           [[no]]
#   --with-silentShellDebugging=ans
#                           Use Built-in lua package instead of system ones.
#                           [[no]]

# Some influential environment variables:
#   CC          C compiler command
#   CFLAGS      C compiler flags
#   LDFLAGS     linker flags, e.g. -L<lib dir> if you have libraries in a
#               nonstandard directory <lib dir>
#   LIBS        libraries to pass to the linker, e.g. -l<library>
#   CPPFLAGS    (Objective) C/C++ preprocessor flags, e.g. -I<include dir> if
#               you have headers in a nonstandard directory <include dir>

# Use these variables to override the choices made by `configure' or to help
# it to find libraries and programs with nonstandard names/locations.

# Report bugs to the package provider.

./configure \
    --prefix=$apps/lmod/git
