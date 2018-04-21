#! /bin/bash

if [ "$1" = "" ]; then
    echo "Pass pattern to be matched as argument. Characters and '.' as wildcards."
    exit 1
fi

sample=$1

while read p; do
    if [[ $p =~ ^$sample$ ]]; then
        echo $p
    fi
done </usr/share/dict/words
