#!/usr/bin/python
# -*- coding: utf8 -*-

from sqs_utils import *

if __name__ == '__main__':
    sqs_profile = sqsClass()
    sqs_profile.create_test_queues('s3sync-worker', 10)
