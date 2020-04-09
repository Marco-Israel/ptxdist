#!/bin/bash

TASK="latex"
VERSION="latest"
SERVICE="docker"

if [ !  $(ps -ef | grep -v grep | grep $SERVICE | wc -l ) > 0 ]
then
/etc/init.d/$SERVICE start
fi



if [ $# -gt 0 ]
then
    docker run --name $TASK -it --rm -v $PWD:/$TASK/input $TASK:$VERSION $@
else
    docker run --name $TASK -it --rm -v $PWD:/$TASK/input $TASK:$VERSION
fi
