+++
title = "Setting up GitHub Secrets"
chapter = true
weight = 33
+++

# Setting up GitHub Secrets

In this section, we'll configure the required secrets for our GitHub Actions workflow.

## 🔐 Adding Repository Secrets

1. Navigate to your GitHub repository and click on "Settings"
2. In the left sidebar, click "Secrets and variables" then "Actions"
3. Click "New repository secret"

![Navigate to Secrets](/images/navigate-secrets.png)

4. Add your RDS connection string:
   - Name: `PROD_DATABASE_URL`
   - Secret: Your RDS connection string (from Module 1)

![Add Production Secret](/images/add-prod-secret.png)

5. Add your Neon connection string:
   - Name: `DEV_DATABASE_URL`
   - Secret: Your Neon connection string (from Module 2)

![Add Development Secret](/images/add-dev-secret.png)

6. Add your AWS region:
   - Name: `AWS_REGION`
   - Secret: Your AWS region (Needs to be: `us-west-2`)

![Add Region Secret](/images/add-region-secret.png)

7. Add your AWS region:
   - Name: `AWS_ACCOUNT_ROLE`
   - Secret: Your AWS region (Needs to be: `us-west-2`)

![Add Region Secret](/images/add-role-secret.png)

## ✅ Verification

Confirm all secrets are listed in your repository:
- PROD_DATABASE_URL
- DEV_DATABASE_URL
- AWS_REGION
- AWS_ACCOUNT_ROLE

![Verify Secrets](/images/verify-secrets.png)

## 🎯 Next Steps

With our secrets configured, let's set up our GitHub Actions workflow.