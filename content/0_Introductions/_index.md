+++
title = "Agenda"
chapter = true
weight = 10
+++

# Agenda

## Learning Objectives

In this workshop, you will:

- Learn how Neon can complement Amazon RDS in development workflows by enhancing speed to provision resources, collaborate easily, and address data synchronization challenges.
- Learn about Neon's capabilities like database branching, instant environment provisioning, CI/CD integration, and autoscaling to enhance development and testing workflows.
- Configure Neon as a dev-friendly alternative to RDS, enabling efficient workflows without disrupting production databases.
- Automate data transfer between RDS and Neon (use tools like `pg_dump` and `GitHub Actions` to synchronize data from RDS to Neon effectively).
- Leverage Neon's branching feature to create isolated environments for parallel development without extra storage costs.
- Utilize features like Neon's scale-to-zero functionality to reduce costs while improving team collaboration and iteration speed.

## Does this workshop cost anything? 

Neon is currently free to use. There are different pricing plans for different use cases. However, for this workshop, we will be using the free plan. If for any reason you need to upgrade your plan, you can do so by clicking on the "Upgrade" button in the top right corner of the Neon dashboard. We can also provide you with a coupon code if you think you will need to upgrade your plan.

## Workshop Structure

- **Prerequisites** (~30 minutes)
- **Module 1: Unlocking Neon's Potential for Development Workflows** (~30 minutes)
  - Part 1: Understanding how Neon can complement Amazon RDS for Development Workflows
  - Part 2: Enhancing Development Workflows with Neon
  - Part 3: Setting Up Your First Neon Project
- **Module 2: Set Up Environment for Neon Twin Deploy Workflow** (~30 minutes)
  - Path A: For Users Already Running RDS in Production or Staging
  - Path B: For Users Not Running RDS in Production or Staging
- **Module 3: Neon Twin Deploy Workflow** (~30 minutes)
  - Learn how to create a "Neon Twin," a synchronized copy of your RDS database.
  - Automate nightly synchronization using `pg_dump`, `pg_restore`, and GitHub Actions.
  - Set up GitHub workflows to keep development environments up-to-date.
