+++
title = "Clean Up"
chapter = true
weight = 40
+++

# Clean Up Your Lab Resources 🧹

Congratulations on completing the **Neon Twin Deploy Workshop**! Before wrapping up, it’s important to clean up any resources that were created during the workshop to ensure you’re not incurring unnecessary costs or leaving active resources behind in your AWS account.

---

## 🛠️ Resources to Clean Up

During this workshop, you created the following resources, which need to be cleaned up:

1. **GitHub Repository**
   - Contains your workflows and scripts for Neon Twin synchronization.
2. **CloudFormation Stack**
   - Deployed resources for OIDC authentication between GitHub and AWS.
3. **Neon Database Instance**
   - Created for your development environment.
4. **RDS Snapshot/Dump File**
   - Used to restore your RDS database to Neon (if stored in S3).
5. **Secrets in GitHub**
   - Sensitive data stored in GitHub Secrets, including database connection strings and AWS region details.

---

## 📋 Step-by-Step Clean Up Instructions

### 1️⃣ **Delete the CloudFormation Stack**

1. Navigate to the [AWS CloudFormation Console](https://console.aws.amazon.com/cloudformation).
2. Locate the stack you created (e.g., `github-oidc-stack`).
3. Select the stack, click on **Actions**, and choose **Delete Stack**.
4. Confirm the deletion. AWS will remove all resources provisioned by this stack.

> **Tip**: Check the "Events" tab in CloudFormation for progress updates during deletion.

---

### 2️⃣ **Remove GitHub Secrets**

1. Go to your GitHub repository and click on **Settings**.
2. Navigate to **Secrets and variables** → **Actions**.
3. For each secret you created (e.g., `PROD_DATABASE_URL`, `DEV_DATABASE_URL`, `AWS_REGION`, `AWS_ACCOUNT_ROLE`):
   - Click the delete icon to remove the secret.

> **Important**: Ensure no workflows are using these secrets before deletion.

---

### 3️⃣ **Delete the GitHub Repository**

1. Navigate to your GitHub repository.
2. Go to **Settings** → **General** → **Danger Zone**.
3. Click **Delete this repository** and follow the prompts.

> **Note**: Ensure you’ve saved any files or workflows you’d like to keep before deletion.

---

### 4️⃣ **Delete the Neon Database**

1. Log in to the [Neon Console](https://console.neon.tech).
2. Locate your Neon database instance.
3. Click on the database and choose **Delete**.

> **Caution**: Ensure no critical data exists in this database before deletion.

---

### 5️⃣ **Remove RDS Snapshots or Dump Files**

If you created an RDS snapshot or stored a database dump file in S3, follow these steps to remove them:

#### 🗂️ **Remove Snapshots**
1. Navigate to the [AWS RDS Console](https://console.aws.amazon.com/rds/).
2. Select **Snapshots** from the left menu.
3. Locate the snapshot(s) created during the workshop.
4. Select and delete them.

#### ☁️ **Delete S3 Objects**
1. Go to the [AWS S3 Console](https://console.aws.amazon.com/s3/).
2. Locate the bucket where your dump file was stored.
3. Select the dump file and click **Delete**.

> **Reminder**: Double-check the bucket for any leftover workshop-related files.

---

### 6️⃣ **Verify Cleanup**

- Ensure no active **CloudFormation stacks** remain.
- Confirm all **Neon databases** are deleted.
- Check your **GitHub repositories** and **secrets** for any leftovers.
- Verify that your **AWS account** has no lingering RDS snapshots, S3 files, or associated costs.

---

## 🎯 Summary

By completing these cleanup steps, you’ll:
- Avoid unnecessary AWS charges.
- Maintain a tidy GitHub account.
- Ensure your resources are fully decommissioned.

Thank you for participating in the **Neon Twin Deploy Workshop**! 🎉 If you have feedback or questions, feel free to reach out.

---
