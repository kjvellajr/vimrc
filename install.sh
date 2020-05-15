#!/bin/sh
set -e

if [ ! -d ~/.vim_runtime ]; then
  DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"
  echo "creating symlink ~/.vim_runtime -> $DIR"
  ln -s $DIR ~/.vim_runtime
fi

./install_awesome_vimrc.sh

rm -rf sources_non_forked/

python update_plugins.py

rm -rf sources_non_forked/auto-pairs
