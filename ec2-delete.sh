#!/bin/bash

AMI_ID="ami-0c55b159cbfafe1f0"
INSTANCE_TYPE="t2.micro"
KEY_NAME="<key_pair_name>"
TAG_NAME="awscli"
COUNT=3
REGION="us-east-1"

aws ec2 run-instances \
    --image-id $AMI_ID \
    --instance-type $INSTANCE_TYPE \
    --count $COUNT \
    --key-name $KEY_NAME \
    --tag-specifications 'ResourceType=instance,Tags=[{Key=Name,Value='$TAG_NAME'}]' \
    --region $REGION

echo "Waiting for instances to launch..."
sleep 20

INSTANCE_IDS=$(aws ec2 describe-instances \
    --filters "Name=tag:Name,Values=$TAG_NAME" \
    --query 'Reservations[*].Instances[*].InstanceId' \
    --output text \
    --region $REGION)

echo "Instance IDs: $INSTANCE_IDS"
