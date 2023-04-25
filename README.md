# Jenkins Parameterized Job for Provisioning AWS EC2 Instances
## Overview
This Jenkins job allows you to provision AWS EC2 instances on-demand using a parameterized build. You can specify the instance type, AMI ID, key pair, security group, and other options as parameters when running the job.

Repository: https://github.com/manikcloud/Jenkins-cicd.git
Branch: 3.1.2-free-style

## Prerequisites
Before you can use this job, you will need:

* A Jenkins server installed and configured with the AWS CLI plugin.
* AWS CLI installed on the Jenkins server.
* An AWS IAM user with the necessary permissions to launch and terminate EC2 instances.
* A default VPC and a default subnet in your AWS account.

## Clone Repository and Checkout Branch

This guide will walk you through cloning the following GitHub repository and checking out the specified branch:

- Repository: https://github.com/manikcloud/Jenkins-cicd.git
- Branch: 4.6_string_parameter

Follow these steps to clone the repository and checkout the branch:

1. Open the terminal.

2. Clone the repository:

   ```
   git clone https://github.com/manikcloud/Jenkins-cicd.git
   ```

3. Navigate to the cloned repository:

   ```
   cd Jenkins-cicd
   ```

4. Checkout the desired branch:

   ```
   git checkout 4.6_string_parameter
   ```

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
* To use the job, simply go to the Jenkins web interface and run the job. 
* Enter the desired values for the parameters and click "Build". 

The job will launch the specified number of EC2 instances with the specified configuration.
_________________________________________________

# Jenkins Parameterized Job for EC2 Instance Deletion
This guide will walk you through the process of creating a Jenkins parameterized job that uses AWS CLI to delete EC2 instances.

## Prerequisites
Before proceeding with the steps below, you will need:

* An EC2 instance(s) running on AWS
* AWS CLI installed on the Jenkins server
* AWS CLI configured with access key and secret key
* Jenkins server installed and running

## Step 1: Creating a Jenkins Parameterized Job
1. Open your Jenkins dashboard and click on "New Item"
2. Enter a name for your new job and select "Freestyle project" as the job type
3. Check the "This build is parameterized" box
4. Click "Add Parameter" and select "String Parameter"
5. Enter "INSTANCE_ID" as the name and leave the default value blank
6. Click "Save"

## Step 2: Configuring the Jenkins Job
In the "Build" section, click "Add build step" and select "Execute shell"

Enter the following script:

```

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

```
Click "Save"

## Step 3: Running the Jenkins Job
* Click "Build with Parameters"
* Enter the instance ID of the EC2 instance you want to delete
* Click "Build"
* The job will run and terminate the specified EC2 instance.


# Verifying the EC2 Instance Termination
Log in to your AWS console
Navigate to the EC2 dashboard
Verify that the specified EC2 instance has been terminated.

Congratulations! You have successfully created a Jenkins parameterized job that uses AWS CLI to delete EC2 instances.






