#!/bin/bash

# exit immediately if something fails
set -o nounset
set -o errexit

#export HOMEBREW_SOURCEFORGE_MIRROR='ufpr'
export HOMEBREW_SOURCEFORGE_MIRROR='tcpdiag'


readonly dir=$(cd $(dirname "$0"); pwd)
cd $dir

if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo "= Installing apps ="
while read -r line; do
  [[ -z "$line" ]] && continue;
  echo "~> Running brew $line"
  brew $line || true
done <<< "$(grep -v '^$\|^\s*\#' brewfile)"

exit 0
