#! /bin/bash



ec2Name=`cat ../Variables/ec2Instance.name`

echo "Destroying EC2 instance: $ec2Name"

aws \
ec2 terminate-instances \
--instance-ids $ec2Name \
--output table
