#! /bin/bash


ec2Name=`cat ../Variables/ec2Instance.name`

echo "Adding $ec2Name to your ELB: $1-elb"

aws elb \
register-instances-with-load-balancer \
--load-balancer-name $1-elb \
--instances $ec2Name \
--output table
