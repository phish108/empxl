#!/bin/bash

DOCSDIR=docs_auto

mkdir -p ${DOCSDIR}

for FILE in $(ls src/de)
do

    if [[ -z FILE ]] || [[ "$FILE" = "zuweisungen.txt" ]]
    then
        continue
    fi


    MDFILE=${DOCSDIR}/${FILE%.*}.md
    echo $MDFILE

    # compute Name for each function in the file
    FNAMES=$(grep -E "=\s*LAMBDA" src/de/$FILE | perl -pe 's/^\s*([^\s=]+)\s*=\s*LAMBDA.*$/$1/') 

    echo -n "# Function: " > ${MDFILE}
    for FNAME in ${FNAMES}
    do
        echo -n "\`${FNAME}()\` " >> ${MDFILE}
    done
    echo >> ${MDFILE}
    echo >> ${MDFILE}

    # compute SYNOPSIS for each function in the file
    echo "# SYNOPSIS " >> ${MDFILE}
    echo >> ${MDFILE}
    echo "\`\`\`" >> ${MDFILE}
    cat src/de/$FILE | \
        perl -pe 's/\h*\/\/.*$//' | \
        perl -pe 's/\s*//g' | \
        perl -pe 's/;;([^=]+=LAMBDA|$)/\n$1/g' | \
        perl -pe 's/=LAMBDA(\([^\(]+);.*$/$1)/' >> ${MDFILE}
    echo "\`\`\`" >> ${MDFILE}
    echo >> ${MDFILE}

    echo "# DESCRIPTION " >> ${MDFILE}
    echo >> ${MDFILE}

    # Extract Doc Header 

    # DOC Comments starts with a comment at the beginning of the line (without indentation)
    # The DOC Comments will be passed as is
    # if Doc Comments are spread across the corebase, you may want include to extra blank 
    # comment lines for better formatting

    grep -E "^//" src/de/$FILE | perl -pe 's/\/\/\h*//' >> ${MDFILE}
done
