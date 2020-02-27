s3BucketUrl=${1:-ndc-cf-templates.s3.us-east-2}
sg=${2:-sg-4c40642b}
subnetIds=${3:-subnet-6774fe2b\\,subnet-a2e115c9\\,subnet-a4e3c1de}
vpcId=${4:-vpc-49af6322}
stackName=${5:-ci-master-elbDemo}

aws cloudformation create-stack --stack-name $stackName \
--template-url https://$s3BucketUrl.amazonaws.com/stack.yml \
--parameters \
ParameterKey=repoName,ParameterValue=elbDemo3 \
ParameterKey=keyName,ParameterValue=ndcDefaultKey \
ParameterKey=instanceSecurityGroups,ParameterValue=$sg \
ParameterKey=subnetIds,ParameterValue=$subnetIds \
ParameterKey=templatePath,ParameterValue=https://$s3BucketUrl.amazonaws.com \
ParameterKey=vpcId,ParameterValue=$vpcId