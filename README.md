# Deploy Simple Sinatra App on AWS

## Preparations
#### 1. Create an AWS account with this link: [Sign up for AWS](https://portal.aws.amazon.com/billing/signup#/start)
#### 2. Install AWS CLI version 2
- **Linux**  
[Install the AWS CLI version 2 on Linux](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2-linux.html#cliv2-linux-install)

- **Windows**  
[Install the AWS CLI version 2 on Windows](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2-windows.html)

- **macOS**  
[Install the AWS CLI version 2 on macOS](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2-mac.html)

#### 3.Create an IAM user with access key (console recommended)  
[Create IAM users(console)](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_users_create.html#id_users_create_console)
![](assets/create-iam-user.png)



#### 4. Create a user group and add IAM user to user group. 
User group requires full access to following services:  
>**IAM, EC2, CloudFormation, S3, CloudWatch**
##### 5. Configure AWS CLI with acccess key   
[- Get Access Key](https://docs.aws.amazon.com/powershell/latest/userguide/pstools-appendix-sign-up.html)  
[- Configure Access Key](https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-files.html)

## Deploy Sinatra Server
#### Download code from repo and go into the repo directory
```bash
git clone https://github.com/junyao-d/simple-sinatra-app-aws.git
cd simple-sinatra-app-aws/
```
#### Run following CloudFormation deploy command
###### In Windows PowerShell
```
aws cloudformation deploy --template-file sinatra-server-launch.yaml --stack-name sinatra-app
```
###### In Linux/macOS/Windows Subsystem 
```bash
sh sinatra-deploy.sh
```
---
**NOTE:**  
If you would like to run the command outside the source code directory, just put the path in front of the template yaml file.
```
--template-file /full_path/sinatra-server-launch.yaml
```
---
## Check your stack in the console
#### Go to Cloudformation > Stacks
###### Check stack deploy status: 
![](assets/cloudformation-inprogress.png)
![](assets/cloudformation-complete.png)
#### Go to sinatra-app
###### check stack info & events for deployment details
![](assets/stack-info.png)
![](assets/stack-events.png)

#### Go to EC2 > Instances
![](assets/ec2-instance-info.png)

#### Copy public DNS or public IP Address to browser
![](assets/app-page.png)
---
Sinatra App is running!

## Summary