#! /bin/bash

sed 's/"//g' ../Variables/ip.address > ip.address

ec2Name=`cat ../Variables/ec2Instance.name`

aws ec2 describe-instances --instance-ids $ec2Name --query 'Reservations[0].Instances[0].PublicIpAddress' > ip.address

sed 's/"//g' ip.address > ../Variables/ip.address

rm ip.address

ipaddress=`cat ../Variables/ip.address`

echo "Connecting to $ec2Name at IP Address $ipaddress..."

ssh -i ../Variables/devenv.pem ec2-user@$ipaddress
