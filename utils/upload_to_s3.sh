#!/usr/bin/env bash

# Ensure S3 service instance creds are configured
# /app/jmeter_buildpack_utils/aws_configure_s3_creds.sh

# Upload file to S3
if [ -z "$1" ]; then
    echo "Error: No argument provided!"
    exit 1
fi

echo "Directory to upload: $1"
dir_to_upload=$1

# Getting AWS info from from VCAP_SERVICES
AWS_ACCESS_KEY_ID="$(echo $VCAP_SERVICES | jq -r '.["csb-aws-s3-bucket"][0].credentials.access_key_id')"
AWS_SECRET_ACCESS_KEY="$(echo $VCAP_SERVICES | jq -r '.["csb-aws-s3-bucket"][0].credentials.secret_access_key')"
AWS_DEFAULT_REGION="$(echo $VCAP_SERVICES | jq -r '.["csb-aws-s3-bucket"][0].credentials.region')"

# Export AWS creds
export AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID
export AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY
export AWS_DEFAULT_REGION=$AWS_DEFAULT_REGION

BUCKET_NAME="$(echo $VCAP_SERVICES | jq -r '.["csb-aws-s3-bucket"][0].credentials.bucket_name')"

/app/aws-cli/bin/aws s3 sync $1 s3://$BUCKET_NAME/
