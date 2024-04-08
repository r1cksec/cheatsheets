### Bucket data
```
/?versions - metadata about all versions of the objects inside
/?uploads - lists of in-progress multipart uploads 
```

# Storage class for upload influences price
* https://aws.amazon.com/s3/pricing

```
aws s3 cp <file> "s3://<bucketname>/<file>" --storage-class <class>
```

### Check if bucket belongs to a user ID (incorrect ID results in access denied error)
```
curl -X GET "https://<bucketname>.amazonaws.com/" -H "x-amz-expected-bucket-owner: <ownerId>"
```

### Get canonical user ID from bucket (resolve canonical ID to account ID by placing it inside an IAM policy)
```
curl "https://<bucketname>.amazonaws.com?fetch-owner=true"
```

