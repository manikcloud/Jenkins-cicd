#!/bin/bash

# AMI_ID="ami-0c55b159cbfafe1f0"
# INSTANCE_TYPE="t2.micro"
# KEY_NAME="<key_pair_name>"
# TAG_NAME="awscli"
# COUNT=3
# REGION="us-east-1"

INSTANCE_IDS=$(aws ec2 describe-instances \
    --filters "Name=tag:Name,Values=$TAG_NAME" \
    --query 'Reservations[*].Instances[*].InstanceId' \
    --output text \
    --region $REGION)

echo "Terminating instances: $INSTANCE_IDS"
aws ec2 terminate-instances --instance-ids $INSTANCE_IDS --region $REGION

echo "Waiting for instances to terminate..."
sleep 20

for INSTANCE_ID in $INSTANCE_IDS; do
    INSTANCE_STATE=$(aws ec2 describe-instances \
        --instance-ids $INSTANCE_ID \
        --query 'Reservations[0].Instances[0].State.Name' \
        --output text \
        --region $REGION)

    if [ "$INSTANCE_STATE" = "terminated" ]; then
        echo "Instance $INSTANCE_ID has been terminated."
    else
        echo "Instance $INSTANCE_ID has not been terminated. Something went wrong."
    fi
done