#!/bin/bash

mkdir -p /root/s3-mass-migration

aws s3 sync s3://leo-zhy-tasks/s3-mass-migration/ /root/s3-mass-migration


find /root/s3-mass-migration | egrep -e '.sh$|.py$' | xargs chmod +x
