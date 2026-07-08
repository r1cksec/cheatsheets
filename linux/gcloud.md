### Initialize authentication
```
gcloud init
```

### List active accounts credentials
```
gcloud auth list
```

### Authenticate using json file
```
gcloud auth activate-service-account --key-file=<file>.json
```

### Get current account
```
gcloud config get-value account
```

### List configuratiion
```
gcloud config configurations list
```

### List organisation
```
gcloud organizations list
```

### List projects
```
gcloud projects list
```

### Get description of project
```
gcloud projects describe <projectId>
```

### Delete project
```
gcloud projects delete <projectId>
```

### Delete project
```
gcloud projects delete <projectId>
```

### Get IAM policy of project
```
gcloud projects get-iam-policy <projectId>
```

### Check if project is billable
```
gcloud billing projects describe <projectId>
```

### List cloud run services
```
gcloud run services list --project <projectId>
```

### Get description of run service
```
gcloud run services describe <service> --region=<region> --project=<projectId>
```

### Get IAM policy of run service
```
gcloud run services get-iam-policy <service> --project=<projectId> --region=<region>
```

### List GCP APIs and services
```
gcloud services list --project <projectId>
```

### List buckets of project
```
gcloud storage buckets list --project <projectId>
```

### List container clusters
```
gcloud container clusters list --project <projectId>
```

### List SQL instances
```
gcloud sql instances list --project <projectId>
```

### List instances
```
gcloud compute instances list --project <projectId>
```

### List routers
```
gcloud compute routers list
```

### List addresses
```
gcloud compute addresses list
```

### Show metadata of service acount
```
gcloud iam service-accounts describe <email> --project <projectId>
```

### List source code repositories
```
gcloud source repos list
```

### Clone repository to home dir
```
gcloud source repos clone <repository>
```

### List applications
```
gcloud app instances list --project <projectId>
```

### List logs
```
gcloud logging logs list --project <projectId>
```

### Read content of logs
```
gcloud logging read "logName=projects/<projectId>/logs/<logpath>" --project <projectId> --limit 50 --format json
```

### Print ipv4 addresses of given project id
```
PROJECT_ID="<projectId>"

gcloud logging read 'logName:"cloudaudit.googleapis.com"' --project="${PROJECT_ID}" --format='table(
      timestamp,
      protoPayload.authenticationInfo.principalEmail,
      protoPayload.serviceName,
      protoPayload.methodName,
      protoPayload.requestMetadata.callerIp
    )' --limit=200
```
