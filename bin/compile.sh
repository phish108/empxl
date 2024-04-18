#!/bin/bash

mkdir -p compile

for FILE in $(ls src/de)
do 
    cat src/de/$FILE | sed 's/\s*#.*$//g' | tr -d "[:space:]" > compile/$FILE
done