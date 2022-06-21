minio-demo with AWS CLI access
===

## Usage
### Bring up minio
```
make
```

### Verify
Test and verify the minio is accessible with aws-cli.
```
export AWS_ACCESS_KEY_ID=minioadmin
export AWS_SECRET_ACCESS_KEY=minioadmin
aws configure set default.s3.signature_version s3v4
aws --no-verify-ssl --endpoint-url http://localhost:9000 s3 ls
aws --no-verify-ssl --endpoint-url http://localhost:9000 s3 mb s3://mybucket
```

### Clean up
```
make clean
```

## Reference
https://docs.min.io/docs/aws-cli-with-minio.html