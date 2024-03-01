# Vocabulary

#### ECS
Elastic Container Service is an orchestration service used to manage and deploy containers.

#### CloudTrail
CloudTrail logs and contains various API events (enabled by default & retention rate of 90 days).

#### Route 53 Logs 
AWS logs that contains DNS events.

#### GuardDuty and AWS Detective
Paid services of AWS to automate CloudTrail analysis.

#### Instance user Data 
Instance user data is used to run commands when an EC2 instance is first started or after it is rebooted.

#### Amazon CloudFront
A Content Delivery Network in Amazon Web Services.

#### Amazon S3
A cloud storage service (S3 = Simple Storage Service).

#### Buckets
Names of the logical groups within S3.

#### OrganizationAccountAccessRole
This role has by default the AdministratorAccess Policy attached to it, giving the role complete control over the member accounts. In summary, this means that an attacker who controls the management account can potentially compromise any account in the organization as an administrator, which has this role enabled. The attacker needs an IAM account in the managment account, which has the permissions to assume this OrganizationAccountAccessRole.

#### Connection Tracking
Content Tracking allows the security groups to track information about the network traffic and allow/deny that traffic based on the Security Group rules.

#### Management Account
An AWS Account, which is the choosen managment account for an organisation. This account can be the central account for organization managment, but it can also delegate to other accounts. E.g. a security account for handling monitoring. 


#### IMDS
The Instance Metadata Service contains the metadata and information about that specific EC2 instance.

#### IMDSv2
IMDSv2 offers among others Session Authentication (to mitigate SSRF) by using HTTP PUT request.

#### AMI
An Amazon Machine Image (AMI) is a supported and maintained image provided by AWS that provides the information required to launch an EC2 instance.

#### AMI-Launch-Index
If more than one AMI is launched at the same time, this value indicates the order in which the instance was launched. The value of the first instance launched is 0.

# IAM 

Amazon Identity and Access Management is used to specify access controls to AWS services and resources.

## IAM Access Types

### Authenticated Access (signed in)
Requires an AWS account to access a resource that may allow anonymous users.

### Authorized Access (has permissions)
Requires an AWS account and indicates if the user has the proper permissions designated to access the resource.

### Publicly Available
Does not require an AWS account and the resource is allowing anyone in the world to view it.

## IAM ID Identifiers

IAM uses a few different identifiers for users, user groups, roles, policies, and server certificates.

| Prefix | Entity Type |
| - | - |
| ABIA  | AWS STS service bearer token |
| ACCA  | Context-specific credential |
| AGPA  | Group |
| AIDA  | IAM user |
| AIPA  | Amazon EC2 instance profile |
| AKIA  | Access key |
| ANPA  | Managed policy |
| ANVA  | Version in a managed policy |
| APKA  | Public key |
| AROA  | Role |
| ASCA  | Certificate |
| ASIA  | Temporary (AWS STS) keys |

## Cognito

Cognito allows authenticated and unauthenticated users to access AWS resources with temporary credentials.
It supports sign-in with social identity providers, such as Facebook, Google, and Amazon, and enterprise identity providers via SAML 2.0 and has two main components:

- **User pools** are user directories that provide sign-up and sign-in options for your app users
- **Identity** pools enable developers to grant end-users access to AWS services

The user authenticates against a user pool, if successful, the user pool assigns 3 JWT tokens to the user (ID, Access, and Refresh).
The ID JWT is passed to the identity pool in order to receive temporary AWS credentials with roles assigned to the identity provider.

## Alert

Using a pentesting Linux distribution such as Kali Linux or Parrot Linux will trigger a PenTest GuardDuty [finding](https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_finding-types-iam.html#pentest-iam-kalilinux).

# Workflow

## Unauthenticated - Enumeration 
* https://github.com/RhinoSecurityLabs/pacu

## Credentials

### Set environment variables (long term credentials - start with AKIA)

```
export AWS_ACCESS_KEY_ID=<keyId>
export AWS_SECRET_ACCESS_KEY=<key>
```

### Set environment variables (short term credentials - start with ASIA)

```
export AWS_ACCESS_KEY_ID=<keyId>
export AWS_SECRET_ACCESS_KEY=<key>
export AWS_SESSION_TOKEN=<token>
```

Make use of aws cli --profile options, to keep track of keys and accounts

### Check if credentials are valid (possibly logged to CloudTrail)
```
aws sts get-caller-identity
aws iam get-user --user-name AmosBurton --profile initial 

# possibly less logged, but needs sns permissions and account id up front
aws sns publish --topic-arn arn:aws:sns:us-east-1:*account id*:aaa --message aaa
```

## Meta-Data 

If an IAM Role is associated with the EC2 instance, credentials for that role will be in the metadata service.

```
http://169.254.169.254/latest/meta-data/
http://169.254.169.254/latest/meta-data/iam/
http://169.254.169.254/latest/meta-data/iam/security-credentials/
http://169.254.169.254/latest/meta-data/iam/security-credentials/role-name
http://169.254.169.254/latest/meta-data/iam/security-credentials/ec2-default-ssm/
http://169.254.169.254/latest/meta-data/identity-credentials/ec2/security-credentials/ec2-instance
http://169.254.169.254/latest/dynamic/instance-identity/document
http://[fd00:ec2::254]/latest/meta-data/
```

The Metadata Service contains:

- ami-id
- ami-launch-index
- ami-manifest-path
- hostname
- iam/info
- iam/security-credentials/role-name
- identity-credentials/ec2/info
- instance-id
- local-hostname
- local-ipv4
- public-hostname
- public-ipv4
- public-keys/0/openssh-key
- security-groups

## User-Data

User Data contains information about the deployment process (CloudFormation, YAML, Terraform).

Path to file containing the logs of User Data:

### Local endpoint for user data
```
http://169.254.169.254/latest/user-data
```

### Windows logging for user data 
```
C:\ProgramData\Amazon\EC2Launch\log\agent.log
```

### Ubuntu logging for user data
```
/var/log/cloud-init.log
/var/log/cloud-init.log
/var/log/cloud-init-output.log
/var/lib/cloud/instances/instance-id
```

Access User Data with AWS console:

```
aws ec2 describe-instance-attribute --instance-id i-<describeInstanceAttribute> --attribute userData --output text --query "UserData.Value" | base64 --decode
```

Acces User Data using IMDSv2:

```
TOKEN=`curl -X PUT "http://169.254.169.254/latest/api/token" -H "X-aws-ec2-metadata-token-ttl-seconds: 21600"`
curl -H "X-aws-ec2-metadata-token: $TOKEN" -v http://169.254.169.254/latest/user-data/
```

Access via powershell locally with IMDSv2:
```
[string]$token = Invoke-RestMethod -Headers @{"X-aws-ec2-metadata-token-ttl-seconds" = "21600"} -Method PUT -Uri http://169.254.169.254/latest/api/token
```
Drop keys powershell locally with IMDSv2:
```
Invoke-RestMethod -Headers @{"X-aws-ec2-metadata-token" = $token} -Method GET -Uri http://169.254.169.254/latest/meta-data/identity-credentials/ec2/security-credentials/ec2-instance
```


## Enumeration - Get EC2 instance profile setup
```
TOKEN=`curl -X PUT "http://169.254.169.254/latest/api/token" -H "X-aws-ec2-metadata-token-ttl-seconds: 21600"`
curl -H "X-aws-ec2-metadata-token: $TOKEN" http://169.254.169.254/latest/dynamic/instance-identity/document
```


## Enumeration - Get AWS Account ID from bucket
* https://github.com/WeAreCloudar/s3-account-search

```
s3-account-search arn:aws:iam::123456789123:role/s3-searcher <bucketName>
```

## Enumeration - Get IAM Permissions
* https://github.com/andresriancho/enumerate-iam

Will generate CloudTrail logs.

```
python generate_bruteforce_tests.py
python3 enumerate-iam.py --access-key $AWS_ACCESS_KEY_ID --secret-key $AWS_SECRET_ACCESS_KEY --session-token $AWS_SESSION_TOKEN
```

## With Cloudwatch permissions

Check history of an Alarm
```
aws cloudwatch describe-alarm-history --alarm-name "iamshadow" --history-item-type StateUpdate
```

Disable an Alarm
```
aws cloudwatch disable-alarm-actions --alarm-names soundofdapolice
```

Similar, unsubscribe to sns topic
```
aws sns unsubscribe --subscription-arn arn:aws:sns:us-west-2:666666666666:my-topic:somerandomstring
```

## Assume Role Abuse

* https://hackingthe.cloud/aws/enumeration/loot_public_ebs_snapshots

* https://rhinosecuritylabs.com/aws/assume-worst-aws-assume-role-enumeration

