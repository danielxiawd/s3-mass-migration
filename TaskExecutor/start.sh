#!/bin/bash

TOP=${1:-10}

CMD=/root/s3-mass-migration/TaskExecutor/TaskExecutor.py


## TODO: Modify your job_stat.json from ListProducer/start.sh output
SAMPLE_JOB="s3://leo-zhy-tasks/test-migration/job_stat.json"

for (( i=1; i<=$TOP; i++ ))
do
	nohup $CMD ${SAMPLE_JOB} > /dev/null 2>&1 &
done

echo "Start $TOP $CMD done."

exit 0
