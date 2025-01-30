+++
title = "Secure Authentication Setup: Connecting GitHub Actions with AWS OIDC"
chapter = true
weight = 30
+++

# Setting Up Your Environment Securely 🌟

Welcome to Module 2! In this module, you'll set up the foundational pieces that will enable seamless synchronization between your **Amazon RDS** and **Neon** databases using **GitHub Actions**. This involves configuring your GitHub repository, setting up **OIDC authentication** with AWS, and creating a workflow for automatic data synchronization.

Let's dive in and learn how these components fit together to power your workshop environment!

---

## 🧐 What is OIDC?

**OIDC** (OpenID Connect) is an identity layer built on top of **OAuth 2.0**. It allows applications (like GitHub Actions) to securely authenticate with identity providers (like AWS). In this workshop, OIDC helps GitHub Actions assume an AWS role without requiring long-term access keys.

### Why OIDC?

- **No need for access keys**: It eliminates the need to store AWS credentials in GitHub Secrets, reducing the risk of exposure.
- **Secure and dynamic**: GitHub Actions generates short-term tokens that AWS verifies, ensuring a secure connection.
- **Simplified setup**: AWS manages permissions dynamically based on the role you configure.

---

## 🛠️ Key Steps in this Module

This module is broken into several parts to guide you through setting up your environment:

### 1️⃣ **Setting Up Your GitHub Repository**
You'll create a GitHub repository that will host the workflows and scripts necessary for database synchronization.

> **Why this matters**: A centralized repository ensures that your synchronization logic is version-controlled and easy to update.

### 2️⃣ **Configuring OIDC Authentication**
You'll deploy a pre-built **CloudFormation template** that establishes the trust relationship between GitHub Actions and AWS. This will allow GitHub Actions to assume an IAM role and access AWS services securely.

> **Key takeaway**: This step is the backbone of secure and seamless integration between GitHub and AWS.

### 3️⃣ **Adding Secrets to GitHub**
You'll configure sensitive information like database connection strings and AWS region details as **GitHub Secrets**. These secrets are securely stored and accessed by workflows during runtime.

> **Why this is important**: Secrets enable your workflows to interact with AWS and databases without exposing sensitive information in plain text.

### 4️⃣ **Creating Your GitHub Actions Workflow**
Finally, you'll create a GitHub Actions workflow that uses OIDC authentication to:
   - Dump your RDS database
   - Restore the data to a Neon database
   - Automate this process nightly

> **End goal**: A fully automated data synchronization pipeline for a fresh and reliable development environment!

---

## 💡 Concepts to Understand Before Moving On

Here are some important terms and tools you'll encounter in this module:

### 🔒 **GitHub Secrets**
A secure way to store sensitive data like database connection strings and AWS credentials. You'll configure secrets like:
- `PROD_DATABASE_URL`: Connection string for your RDS database.
- `DEV_DATABASE_URL`: Connection string for your Neon database.

### ☁️ **CloudFormation**
AWS CloudFormation automates the creation of resources like IAM roles and trust policies. You'll use it to set up OIDC authentication.

### ⚙️ **GitHub Actions**
A powerful tool for automating CI/CD workflows. In this workshop, GitHub Actions will:
- Authenticate with AWS using OIDC.
- Dump data from RDS.
- Restore data to Neon.

### 📅 **Cron Scheduling**
A time-based scheduler that allows workflows to run automatically. You'll use a daily schedule to keep your Neon database in sync with RDS.

---

## 🎯 Learning Outcomes

By the end of this module, you will:
- Understand how OIDC authentication works and its benefits for secure integrations.
- Configure GitHub Secrets to securely manage sensitive information.
- Deploy a CloudFormation stack to set up OIDC authentication.
- Create and test a GitHub Actions workflow for database synchronization.

---

## 🚀 Let's Get Started!

Head to the first submodule, **Setting Up Your GitHub Repository**, and start creating the foundation for your Neon Twin synchronization workflow!
