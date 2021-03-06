#!/bin/bash

# Show what we're doing.
set -x

# If the texinfo directory doesn't exist, clone it. Otherwise just
# update the repo.
if [ -d texinfo ]; then
   cd texinfo
   git stash; git stash drop
   git pull --rebase
else
   git clone https://git.savannah.gnu.org/git/texinfo.git
   cd texinfo
fi
# Check out the desired version
git checkout texinfo-6.7

# If the bin directory doesn't exist, assume we need to build and
# install texinfo
if [ ! -d ../bin ]; then
   ./autogen.sh
   ./configure --prefix=$PWD/..
   make; make install
fi
