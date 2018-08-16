#!/usr/bin/bash

ag -l '' $1 | sed 's/\(.*\/\).*$/&\n\1/g' | sort -u | inotifywait -m \
    --fromfile - -e modify --format '%w%f' | while read FILE
do
    SFILE=$(echo $FILE | sed "s/${HOME//\//\\/}/&\/./g")
    rsync -Razq $SFILE $2:~/
    echo $FILE
done
