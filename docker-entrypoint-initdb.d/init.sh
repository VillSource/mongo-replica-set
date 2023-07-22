#!/usr/bin/bash

LOG_FILE=/data/db/script.log.txt
LOG_FILE=/data/db/log/script.log.txt

FN(){
    echo "===========================$*===========================";
}

FN hello world > $LOG_FILE
