#!/bin/bash

SOURCE_DIR=/home/ec2-user/logs

if [ -d $SOURCE_DIR ]
then
    echo "$SOURCE_DIR Exists"
else
    echo "$SOURCE_DIR does not exist"
    exit 1
fi

FILES=$(find $SOURCE_DIR -name "*.log" -mtime +14)
echo "Files: $FILES"

while IFS= read -r line #IFS = Internal file seperator, empty  it will ignore while space -r is not to ignore special charcaters like /
do
    echo "Deleting line: $line"
    rm -rf $line
done <<< $FILES
