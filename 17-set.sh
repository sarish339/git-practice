#!/bin/bash

set -e # setting the automatic exit, if we get the error, set -ex for debug

failure (){
    echo "Failed at: $1:$2"
}

trap 'failure "${LINENO} $BASH_COMMAND"' ERR # err is the error signal

echo "Hello world success"
echooo " Hello world failure"
echo " Hello world after failure"