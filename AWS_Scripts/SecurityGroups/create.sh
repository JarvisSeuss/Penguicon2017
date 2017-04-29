#! /bin/bash -e

aws ec2 create-security-group --group-name devenv-sg --description "security group for development environment in EC2" --output text > ../Variables/securitygroup.name

aws ec2 authorize-security-group-ingress --group-name devenv-sg --protocol tcp --port 22 --cidr 0.0.0.0/0
aws ec2 authorize-security-group-ingress --group-name devenv-sg --protocol tcp --port 80 --cidr 0.0.0.0/0
aws ec2 authorize-security-group-ingress --group-name devenv-sg --protocol tcp --port 443 --cidr 0.0.0.0/0

