+++
title = "Setting up your Workshop Resources"
chapter = false
weight = 17
+++


Your account must have the ability to have Administrative Access


# Deploying the CloudFormation Templates  

To set up the required resources for this workshop, you will need to deploy two CloudFormation templates:  

1. [neon-rds-template.yaml](https://github.com/aws-samples/aws-modernization-with-neon/blob/main/static/infrastructure/neon-rds-template.yaml)
2. [vscode-server.yaml](https://github.com/aws-samples/aws-modernization-with-neon/blob/main/static/infrastructure/vscode-server.yaml)

+++
title = "Setting up your Workshop Resources"
chapter = false
weight = 17
+++

## Deploying the Templates  

### Step 1: Deploy the `neon-rds-template.yaml`  

1. Navigate to the **CloudFormation** service in the [AWS Management Console](https://aws.amazon.com/console/).  
2. Click **Create stack** and select **Upload a template file**.

   ![Create Stack Button](images/cloudformation-create-stack.png)  

3. Click **Choose file**, select the `neon-rds-template.yaml`, and click **Next**.  

   ![Upload Template](images/cloudformation-upload-template.png)  

4. Enter a **Stack Name** (e.g., `neon-rds`).  
5. Review and modify the parameters as needed. Leave default values unless instructed otherwise.  

   ![Stack Parameters](images/cloudformation-stack-parameters.png)  

6. Click **Next**, then review the stack details.  
7. Acknowledge the **IAM role creation** if prompted by checking the appropriate box.  

   ![Acknowledge IAM Roles](images/cloudformation-acknowledge-iam.png)  

8. Click **Submit** to start the deployment.  

   ![Create Stack Process](images/cloudformation-create-process.png)  

Once the stack status changes to `CREATE_COMPLETE`, the resources for the Neon RDS are ready.  

+++
title = "Setting up your Workshop Resources"
chapter = false
weight = 17
+++

## Verifying the Deployments  

- Go to the **CloudFormation Outputs** tab for each stack to verify the deployment details.  

   ![CloudFormation Outputs Tab](images/cloudformation-outputs.png)  

- The `neon-rds-template.yaml` stack will output details related to the RDS instance.  
- The `vscode-server.yaml` stack will provide the `VSCODEURL` and `Password` for accessing the VS Code server.  

---

**Note**: If you encounter errors during the deployment, ensure that:  
1. You have sufficient permissions to deploy CloudFormation stacks.  
2. Your AWS account has the required service limits for the resources being deployed.  
3. All parameters are correctly configured as per the workshop requirements.  

If you have any issues, refer to the troubleshooting section or contact the support team.
