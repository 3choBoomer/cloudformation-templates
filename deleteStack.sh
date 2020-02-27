stackName=${1:-ci-master-elbDemo}
aws cloudformation delete-stack --stack-name $stackName