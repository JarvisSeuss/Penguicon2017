#! /bin/bash

echo "Destroying the ELB: "$1

aws \
elb delete-load-balancer \
--load-balancer-name $1-elb

rm elb.name
