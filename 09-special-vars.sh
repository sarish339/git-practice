#!/bin/bash

echo "All variables passed to the script: $@"
echo " No of variables are passed: $#"
echo " Script Name: $0"
echo "CUrrent Working Directory: $PWD"
echo "Home Dir of current User: $HOME"
echo "PID of the script executing now: $$"
sleep 10 &
echo "PID of last background command: $!"