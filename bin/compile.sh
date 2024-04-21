#!/bin/bash

mkdir -p compile

echo "" > empxl.afe
for FILE in $(ls src/de)
do 
    cat src/de/$FILE | sed 's/\s*\/\/.*$//g' | tr -d "[:space:]" > compile/$FILE

    # compile into a AFE module
    cat compile/$FILE >> empxl.afe
    echo "" >> empxl.afe
done