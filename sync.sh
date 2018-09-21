#!/bin/bash

aws --profile src_profile s3 sync s3://chinakb-inventory-beijing/reinvent .
