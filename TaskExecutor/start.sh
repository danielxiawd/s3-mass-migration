#!/bin/bash

TOP=${1:-10}

N=1

CMD=/root/s3-mass-migration/TaskExecutor/TaskExecutor.py

SAMPLE_JOB="s3://leo-zhy-tasks/test-migration/job_stat.json"

while [ 1 ]; do
        [ $N -gt $TOP ] && break

        nohup $CMD ${SAMPLE_JOB} > /dev/null 2>&1 &

        let N=$N+1

done

echo "Start $TOP $CMD done."

exit 0
