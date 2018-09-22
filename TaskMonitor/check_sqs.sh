#!/bin/bash



B=/root/s3-mass-migration/
mkdir -p $B/logs
LOG=$B/logs/check_sqs.log


pushd $B/TaskMonitor

while [ 1 ]; do

    N=`python check_sqs_list.py`

    echo "`date`: $N" >> $LOG

    sleep 1800
done

popd
