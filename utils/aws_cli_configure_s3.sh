#!/usr/bin/env bash

# Check if VCAP_SERVICES is available
if [ -z "${VCAP_SERVICES}" ]; then
    echo "VCAP_SERVICES is not set, likely this app is not bound to any services"
    exit 1
else 
    echo "VCAP_SERVICES exists!"
fi

# Check if the app is bound to an S3 service instance
if [ -z "${VCAP_SERVICES}" | jq 'has("csb-aws-s3-bucket")' ]; then
    echo "VCAP_SERVICES does not contain a 'csb-aws-s3-bucket' object. Is this app bound to an S3 service instance?"
    exit 1
else
    SERVICE_NAME="$(echo $VCAP_SERVICES | jq -r '.["csb-aws-s3-bucket"][0].name')" 
    echo "VCAP_SERVICES contains a 'csb-aws-s3-bucket' object. Name of the service is: ${SERVICE_NAME}"
fi

# Configure the AWS CLI to use the S3 credentials from VCAP_SERVICES.
# Assumes the app you are deploying is bound to an S3 service instance.
# echo "-----> Set S3 service instance credentials"
# AWS_ACCESS_KEY_ID="$(echo $VCAP_SERVICES | jq -r '.[csb-aws-s3-bucket][0].credentials.access_key_id')"
# AWS_SECRET_ACCESS_KEY="$(echo $VCAP_SERVICES | jq -r '.[csb-aws-s3-bucket][0].credentials.secret_access_key')"
# AWS_DEFAULT_REGION="$(echo $VCAP_SERVICES | jq -r '.[csb-aws-s3-bucket][0].credentials.region')"

# # Export AWS creds
# export AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID
# export AWS_SECRET_ACCESS_KEY_ID=$AWS_SECRET_ACCESS_KEY
# export AWS_DEFAULT_REGION=$AWS_DEFAULT_REGION
# aws configure list