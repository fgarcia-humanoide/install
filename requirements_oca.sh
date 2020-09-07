#!/bin/bash
EXCLUDE_DIRS="other-addons/ utils/"

listcontains() {
  for word in $1; do
    [[ $word = $2 ]] && return 0
  done
  return 1
}

for dir in */ ; do
    if listcontains "$EXCLUDE_DIRS" "$dir" ; then
        continue;
    fi
    echo "Requerimientos $dir"
    cd "$dir"
    
    
    pip3 install -r requirements.txt
    cd ..
done


