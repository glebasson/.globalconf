#!/bin/bash
# Substitute home directory config files by symlinks
cd "$(dirname "$0")"
for file in  $(find . -maxdepth 1 \( -name '.*' -a -not -name '*.swp' \) -type f)
do
  echo 
  ln -f -s $(pwd)/${file:2} ~/${file:2} 
done
