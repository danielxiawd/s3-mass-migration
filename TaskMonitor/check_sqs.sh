#!/bin/bash



B=/root/s3-mass-migration/
mkdir -p $B/logs
LOG=$B/logs/check_sqs.log


pushd $B/TaskMonitor

while [ 1 ]; do

    N=`python check_sqs_list.py`

    echo "`date`: $N" >> check_sqs.log

    sleep 3600
done

popd
