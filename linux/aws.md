### Install
```
pip install awscli
aws configure
ls ~/.aws
```

### List instances
```
aws ec2 describe-instances
```

### List instances using ssh key
```
aws ec2 describe-instances --query 'Reservations[*].Instances[?KeyName==`<sshKey>`].[InstanceId,KeyName,State.Name]' --output text
```

### Create instance (amiId for Debian 12 eu-central-1 ami-0b1ceff20779a1adb)
```
aws ec2 run-instances --image-id <amiId> --count 1 --instance-type t2.micro --key-name <sshKey> --security-group-ids <groupId> --tag-specifications 'ResourceType=instance,Tags=[{Key=Name,Value=<name>},{Key=Project,Value=<project>}]'
```

### Delete instance
```
aws ec2 terminate-instances --instance-ids "<instanceId>"
```

### Get latest amiId of ubuntu
```
aws ssm get-parameters --names /aws/service/canonical/ubuntu/server/20.04/stable/current/amd64/hvm/ebs-gp2/ami-id
```

### List security groups
```
aws ec2 describe-security-groups
```

### Create security group
```
aws ec2 create-security-group --group-name <groupName> --description "<description>"
```

### Add rule to security group
```
aws ec2 authorize-security-group-ingress --group-name <groupName> --protocol tcp --port <port> --cidr 0.0.0.0/0
```

### List subnets
```
aws ec2 describe-subnets --query 'Subnets[*].[SubnetId, AvailabilityZone, VpcId, Tags[?Key==`Name`].Value | [0]]'
```

### List s3 buckets
```
aws s3api list-buckets
```

### Show content of bucket
```
aws s3 ls s3://<name> --no-sign-request
```

### Synchronize content of bucket 
```
aws s3 sync s3://<name> <directory>
```

### Upload/Download content of bucket 
```
aws s3 cp ./<directory> s3://<name>/<path>
```

### Get api gateways of region
```
aws apigateway --region eu-central-1 get-rest-apis
```

### List ssh keys
```
aws ec2 describe-key-pairs
```

### Import ssh key
```
aws ec2 import-key-pair --key-name "<name>" --public-key-material "<sshKey>"
```

