#! /bin/bash -e

aws ec2 create-key-pair --key-name devenv-key --query 'KeyMaterial' --output text > devenv.pem
chmod 400 devenv.pem 
mv devenv.pem ../Variables/
