aws cloudformation create-stack --stack-name ci-master-elbDemo \
--template-url https://ndc-cf-templates.s3.us-east-2.amazonaws.com/stack.yml \
--parameters \
ParameterKey=keyName,ParameterValue=ndcDefaultKey \
ParameterKey=instanceSecurityGroups,ParameterValue=sg-4c40642b \
ParameterKey=subnetIds,ParameterValue=subnet-6774fe2b\\,subnet-a2e115c9\\,subnet-a4e3c1de \
ParameterKey=templatePath,ParameterValue=https://ndc-cf-templates.s3.us-east-2.amazonaws.com \
ParameterKey=vpcId,ParameterValue=vpc-49af6322