#! /bin/bash

elbName=$1-elb

echo "Configuring Health Check for ELB: $elbName"

aws \
elb configure-health-check \
--load-balancer-name $elbName \
--health-check Target=HTTP:8443/index.html,Interval=30,UnhealthyThreshold=5,HealthyThreshold=2,Timeout=5 \
--output table
