aws s3 cp . s3://ndc-cf-templates/ --exclude "*" --include "*.yml" --recursive