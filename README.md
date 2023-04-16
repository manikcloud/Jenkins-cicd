# Jenkins Parameterized Job for Provisioning AWS EC2 Instances
## Overview
This Jenkins job allows you to provision AWS EC2 instances on-demand using a parameterized build. You can specify the instance type, AMI ID, key pair, security group, and other options as parameters when running the job.

## Prerequisites
Before you can use this job, you will need:

* A Jenkins server installed and configured with the AWS CLI plugin.
* AWS CLI installed on the Jenkins server.
* An AWS IAM user with the necessary permissions to launch and terminate EC2 instances.
* A default VPC and a default subnet in your AWS account.

## Configuration
* Open the Jenkins web interface and create a new job.

* Set the job type to "Freestyle project".

* Under "General" settings, check "This project is parameterized" and add the following parameters:

1. instance_type: the instance type (e.g. t2.micro)
2. ami_id: the AMI ID for the instance
3. key_pair: the name of the key pair to use for SSH access
4. security_group: the name of the security group to use for the instance
5. count: the number of instances to launch (default: 1)
* Under "Source Code Management", select your Git repository and branch.

* Under "Build", add a new "Execute shell" build step and paste the following 

## script:

```
#!/bin/bash

# Launch EC2 instances
aws ec2 run-instances \
  --image-id $ami_id \
  --instance-type $instance_type \
  --count $count \
  --key-name $key_pair \
  --security-groups $security_group \
  --region us-east-1

# Wait for instances to launch
sleep 20

# Check instance status
for i in $(seq 1 $count); do
  instance_id=$(aws ec2 describe-instances \
    --filters "Name=tag:Name,Values=jenkins-ec2" \
    --query "Reservations[].Instances[$i].InstanceId" \
    --output text \
    --region us-east-1)
  echo "Instance $i: $instance_id"
  status=$(aws ec2 describe-instance-status \
    --instance-ids $instance_id \
    --query "InstanceStatuses[].InstanceState.Name" \
    --output text \
    --region us-east-1)
  while [ "$status" == "pending" ]; do
    echo "Instance $i is still launching. Waiting 10 seconds..."
    sleep 10
    status=$(aws ec2 describe-instance-status \
      --instance-ids $instance_id \
      --query "InstanceStatuses[].InstanceState.Name" \
      --output text \
      --region us-east-1)
  done
  echo "Instance $i is now $status"
done
```

Save the job configuration.

## Usage
To use the job, simply go to the Jenkins web interface and run the job. Enter the desired values for the parameters and click "Build". The job will launch the specified number of EC2 instances with the specified configuration.






