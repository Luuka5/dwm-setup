#!/bin/bash

theme=$1
device=$2

IFS=$'\n'

# Replace theme inserts with actual theme content
for target in $( ls ./themes/$theme/ )
do
    for file in $(  grep -HRwl './testing/' -e $target )
    do

        target_with_prefix=
        VAR=`sudo cat ./themes/$theme/$target`

        preprocessed_VAR=$(printf '%s\n' "$VAR" |
        sed 's/\\/&&/g;s/^[[:blank:]]/\\&/;s/$/\\/')

        sed -i -e "/#theme\/${target}/a\\${preprocessed_VAR%?}" $file
    done
done
