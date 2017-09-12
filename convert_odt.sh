#!/usr/bin/env bash

# Usage ./convert_odt.sh path_to_worksheet_folder 
# or /bin/bash/convert_odt.sh path_to_worksheet_folder

DATA_PATH="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

if [ -n "$1" ]
then
    DATA_PATH=$1
fi

for d in $(find ${DATA_PATH} -type d -not -path "*git*");
    do
    pushd ${d} &&  libreoffice --headless --convert-to pdf *.odt && popd;
done






