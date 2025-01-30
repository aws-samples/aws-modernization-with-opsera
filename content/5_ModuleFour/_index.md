+++
title = "Clean Up"
chapter = true
weight = 40
+++

# Clean Up Your Lab Resources 🧹

Congratulations on completing the **Neon Twin Deploy Workshop**! Before wrapping up, it’s important to clean up any resources that were created during the workshop to ensure you’re not incurring unnecessary costs or leaving active resources behind in your AWS account.

+++
title = "Clean Up"
chapter = true
weight = 40
+++

## 📋 Step-by-Step Clean Up Instructions

### 1️⃣ **Delete the CloudFormation Stack**

1. Navigate to the [AWS CloudFormation Console](https://console.aws.amazon.com/cloudformation).
2. Locate the stack you created (e.g., `github-oidc-stack`).
3. Select the stack, click on **Actions**, and choose **Delete Stack**.
4. Confirm the deletion. AWS will remove all resources provisioned by this stack.

> **Tip**: Check the "Events" tab in CloudFormation for progress updates during deletion.

+++
title = "Clean Up"
chapter = true
weight = 40
+++

### 3️⃣ **Delete the GitHub Repository**

1. Navigate to your GitHub repository.
2. Go to **Settings** → **General** → **Danger Zone**.
3. Click **Delete this repository** and follow the prompts.

> **Note**: Ensure you’ve saved any files or workflows you’d like to keep before deletion.

+++
title = "Clean Up"
chapter = true
weight = 40
+++

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

+++
title = "Clean Up"
chapter = true
weight = 40
+++

## 🎯 Summary

By completing these cleanup steps, you’ll:
- Avoid unnecessary AWS charges.
- Maintain a tidy GitHub account.
- Ensure your resources are fully decommissioned.

Thank you for participating in the **Neon Twin Deploy Workshop**! 🎉 If you have feedback or questions, feel free to reach out.

---
