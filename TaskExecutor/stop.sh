#!/bin/bash



while [ 1 ]; do
	if [ `ps aux | grep TaskExecutor | grep -cv grep` -eq 0 ]; then
		echo "Stop TaskExecutors ok"
		exit 0
	fi

	ps aux | grep TaskExecutor | grep -v grep | awk '{print $2}' | xargs kill -9

	sleep 1
done

exit 0
