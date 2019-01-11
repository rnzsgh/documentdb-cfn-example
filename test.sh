#!/bin/bash

STACK_NAME=docdb-1
VPC_ID=
SUBNET_0=
SUBNET_1=
PASSWORD=

aws cloudformation create-stack \
  --stack-name $STACK_NAME \
  --template-body file://documentdb.cfn.yml \
  --capabilities CAPABILITY_NAMED_IAM \
  --parameters \
  ParameterKey=VpcId,ParameterValue=$VPC_ID \
  ParameterKey=SubnetId0,ParameterValue=$SUBNET_0 \
  ParameterKey=SubnetId1,ParameterValue=$SUBNET_1 \
  ParameterKey=DatabasePassword,ParameterValue=$PASSWORD

