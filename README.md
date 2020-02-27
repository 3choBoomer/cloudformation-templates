# cloudformation-templates
A few cloudformation templates to create an AutoScalingGroup that uses Redis as a database. Fronted by an ALB.

## Prerequisites/Assumptions
 - You are running this from a unix'esque shell.
 - You have already created the VPC that this stack will use.
  - You have an existing KeyPair for SSH access.
  - You have an S3 bucket that you can upload these CF templates to.
  - You have the `aws cli` v2 installed and properly configured in your environment.
  - You're gonna run this in us-east-1, us-east-2 or us-west-1 because those are the only regions I included in the AMI RegionMap.

## How To
1. Clone the repo.
2. Do the prerequisites.
3. `CHMOD 744` to all *.sh files in this repo.
4. Upload the templates to the S3 bucket created in step 2 by supplying the bucket name to the shell script.
     1. eg `./uploadToAws.sh yourS3BucketNameHere`
5. `cat` the `createStack.sh` file to inspect how it works. Either provide the resources that you created above on the command line in the proper positions or edit the file and replace the defaults with your values.
    1. eg `./createStack.sh yourS3BucketUrl yourSecurityGroupId(s) yourSubnetIds yourVpcId yourStackName(optional)`
6. Observe the stack being created in the aws console.
7. Delete the stack.
    1. eg  `./deleteStack.sh yourStackName` Note: `yourStackName` is only required if you supplied it in step 6.
    
## Bonus functionality 
The main root stack takes 3 optional parameters that, combined with the stack name, would allow this stack to be used to create isolated stacks for each combination of environment/branch/repo. These values could be supplied via the build pipelines and/or artifacts.

For example, the default values in the template will create a stack for `ci-master-elbDemo`. By providing other values here, we could create `demo-master-elbDemo` or `prod-master-elbDemo` or stacks for dev branches: `ci-superCoolFeature-elbDemo`
