#! /bin/bash

elbName=$1-elb
echo "Checking health of :" $elbName 

aws \
elb describe-instance-health \
--load-balancer-name $elbName \
--output table
