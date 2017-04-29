#! /bin/bash

echo "Creating ELB: $1-elb"

securityGroupName=`cat ../Variables/securitygroup.name`

aws \
elb create-load-balancer \
--load-balancer-name $1-elb \
--availability-zones us-east-1a \
--listeners "Protocol=HTTP,LoadBalancerPort=443,InstanceProtocol=HTTP,InstancePort=8443" \
--scheme internet-facing \
--security-groups $securityGroupName \
--output text > elb.name
