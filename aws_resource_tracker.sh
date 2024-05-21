#!/bin/bash
#My first Project on AWS

########################################################
#Author : Madhuri
#
#Date : 05/20/24
#
#Version :v1
#
#This Script will report the AWS Reource Usage.
########################################################

 set -x
 set -e
 set -o

 #To list buckets in S3
 
 echo " It list buckets in S3"

 aws s3 ls
 
 # To List Ec2 instances
 
 echo " It List Ec2 instances"

 aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'


 #To list lambda 
 
 echo " List Lambda "

 aws lambda list-functions

 # List IAM users
 
 echo "list IAM users"

 aws iam list-users

