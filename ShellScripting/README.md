# AWS Resource Check Script

This script, `awsresourcecheck.sh`, is designed to list basic AWS resources in your account using AWS CLI commands.

---

## 🛠️ Script Overview

**Filename:** `awsresourcecheck.sh`  
**Author:** Krithika Babu  
**Version:** v1  
**Purpose:** Fetch and print key AWS resource details  
**Requirements:**  
- AWS CLI configured (`aws configure`)
- `jq` installed for JSON parsing
- Appropriate IAM permissions for listed AWS services

---

## 🔍 Resources Checked

The script will display details for the following:

1. **S3 Buckets** – Lists all S3 buckets
2. **EC2 Instances** – Displays only instance IDs using `jq`
3. **Lambda Functions** – Lists all Lambda functions
4. **IAM Users** – Lists all IAM users

---

## 📦 Prerequisites

Ensure the following are installed and configured on your system:

- **AWS CLI**: [Install Guide](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html)
- **jq**: JSON parsing tool – install via:

```bash
sudo apt update
sudo apt install jq
