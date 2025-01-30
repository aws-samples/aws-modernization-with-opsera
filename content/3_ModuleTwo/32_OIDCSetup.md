+++
title = "Setting up OIDC Authentication"
chapter = true
weight = 32
+++

# Setting up OIDC Authentication for GitHub Actions

In this section, we'll set up OIDC authentication between GitHub Actions and AWS using a CloudFormation template.

## 🔑 Getting the Template

1. Download the CloudFormation template from our GitHub repository:
   - Download to your local machine
     
     ```bash
     https://github.com/aws-samples/aws-modernization-with-neon/blob/main/static/infrastructure/github-oidc.yaml
     ```
   

![Download Template](/images/download-template.png)


:::alert{header="Important" type="warning"}
1. If you are in an AWS Event, [click here](https://catalog.us-east-1.prod.workshops.aws/event/account-login) to access the provisioned AWS Account. If you are working on this in your own AWS Account, please ignore this message.

:::

## 🚀 Deploying the Template
1. Open the [AWS CloudFormation Console](https://us-west-2.console.aws.amazon.com/cloudformation/home?region=us-west-2#/stacks/create)
2. Click "Create stack" → "With new resources (standard)"
3. Under "Specify template":
   - Select "Upload a template file"
   - Click "Choose file" 
   - Select the `github-oidc.yaml` you downloaded
   - Click "Next"
  
   - https://catalog.us-east-1.prod.workshops.aws/event/account-login

![Upload Template](/images/upload-template.png)

## 📝 Stack Configuration

1. Enter stack details:
   - **Stack name**: `github-oidc-stack`
   - **Owners**: Your GitHub username
   - **RepositoriesPerOwner**: Your repository name (or `*` for all repositories)

![Stack Parameters](/images/stack-parameters.png)

2. Click "Next" through the stack options
3. Review and click "Create stack"

## ✅ Getting Your Role ARN

Once the stack creation is complete:

1. Go to the "Outputs" tab in CloudFormation
2. Find the "GitHubActionsRoleArn"
3. Copy this value - we'll use it in our next steps!

![Stack Outputs](/images/stack-outputs.png)

## 🎯 Next Steps

Once you have your Role ARN, proceed to the next section where we'll set up our GitHub repository.

## 🔧 Troubleshooting

If your stack fails to create:
- Check the "Events" tab for error messages
- Verify your GitHub username is correct
- Ensure you have sufficient AWS permissions
