#!/bin/bash

mkdir -p compile

for FILE in $(ls src/de)
do 
    cat src/de/$FILE | tr -d "[:space:]" > compile/$FILE
done