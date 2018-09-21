#!/usr/bin/python
# -*- coding: utf8 -*-


from pprint import pprint
import sys,os

from sqs_utils import *
from utils import *
import boto3

#QUEUE_ENDPOINT='https://eu-west-1.queue.amazonaws.com/888250974927/s3-copy-list'
#DST_BUCKET='ireland-leo-test'

if __name__ == '__main__':
    # 0. Initial
    # load job_info
    job_info = load_json_from_file('./job.json')

    # Init env
    sqs_profile = sqsClass(job_info['dst_profile'])

    #
    total_number=0
    for pos in xrange(job_info['queue_num']):
        response = sqs_profile.check_queue_status('%s-%03d'%(job_info['queue_url_prefix'], pos+1))

        total_number+=response['number']
        
    print total_number*100

    sys.exit(0)
