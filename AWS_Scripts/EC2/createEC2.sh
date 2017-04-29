#! /bin/bash -e 

echo "Creating an EC2 instance..."

amiName=`cat ../Variables/ami.name`
sgName=`cat ../Variables/securitygroup.name`


aws ec2 run-instances --image-id $amiName --security-group-ids $sgName --count 1 --instance-type t2.micro --key-name devenv-key --query 'Instances[0].InstanceId' --output text > ../Variables/ec2Instance.name

instanceID=`cat ../Variables/ec2Instance.name`

echo "Created EC2 instance: $instanceID" 
