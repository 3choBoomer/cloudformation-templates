aws s3 cp ./templates/. s3://ndc-cf-templates/ --exclude "*" --include "*.yml" --recursive