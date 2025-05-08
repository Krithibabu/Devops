#!/bin/bash

# Description: To find the AWS resources usage
# User created: Krithika Babu 
# version: v1

#Sample resources:
# S3
# Lambda
# EC2
# IAM


set -x #debug mode
set -e
set -o

#List the S3 details:
echo "Print s3 list"
aws s3 ls

#List ec2 instances:
echo "Print instances list"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId' #We are fetching only instance id, jq is json processing tool,since the output is in json format, it will retreive from the json, Since the InstanceId is inside the Resevervation and Instances we hhave provided them in the list format[]

#List the Lambda Function:
echo "Print lambda list"
aws lambda list-functions

#List IAM Users:
echo "Print iam user list"
aws iam list-users


