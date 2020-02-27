bucketName=${1:-ndc-cf-templates}
aws s3 cp ./templates/. s3://$bucketName/ --exclude "*" --include "*.yml" --recursive