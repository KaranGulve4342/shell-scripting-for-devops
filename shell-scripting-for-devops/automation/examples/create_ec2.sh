#!/bin/bash

# This script automates the creation of an EC2 instance on AWS.

# Variables
INSTANCE_TYPE="t2.micro"
KEY_NAME="your-key-name"  # Replace with your key pair name
SECURITY_GROUP="your-security-group"  # Replace with your security group
AMI_ID="ami-0abcdef1234567890"  # Replace with a valid AMI ID

# Create EC2 instance
aws ec2 run-instances --image-id $AMI_ID --count 1 --instance-type $INSTANCE_TYPE --key-name $KEY_NAME --security-groups $SECURITY_GROUP

# Output the instance details
echo "EC2 instance created with the following details:"
aws ec2 describe-instances --filters "Name=instance-type,Values=$INSTANCE_TYPE" --query "Reservations[*].Instances[*].[InstanceId,State.Name,PublicIpAddress]" --output table