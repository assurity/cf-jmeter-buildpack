#!/usr/bin/env bash

# Ensure S3 service instance creds are configured
/app/jmeter_buildpack_utils/aws_configure_s3_creds.sh

# Upload file to S3
if [ -z "$1" ]; then
    echo "Error: No argument provided!"
    exit 1
fi

echo "Directory to upload: $1"
dir_to_upload=$1

BUCKET_NAME="$(echo $VCAP_SERVICES | jq -r '.["csb-aws-s3-bucket"][0].credentials.bucket_name')"

/app/aws-cli/bin/aws s3 sync $dir_to_upload s3://$BUCKET_NAME/
