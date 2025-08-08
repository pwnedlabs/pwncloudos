#!/bin/zsh

# Display the usage instructions
echo -e "\n\033[0;92mGithub OIDC Checker Tool\033[0m"
echo -e "\nThis tool checks for misconfigured access to GitHub OIDC from AWS roles and GCP service accounts."

# Provide general information about the tool
echo -e "\n\033[0;93mABOUT:\033[0m"
echo -e "As part of their research on GitHub OIDC link to AWS & GCP, Rezonate Labs has created a scanning script."
echo -e "This script, released to the public, enables organizations to scan their accounts & projects identifying vulnerabilities in their IAM roles & service accounts."

# Usage details
echo -e "\n\033[0;94mUSAGE:\033[0m"
echo -e "There are 2 scripts in this repository, both written in Python 3.11."
echo -e "\nFor GCP-OIDC-Tester:"
echo -e "> \033[0;92mpython3 gcp-oidc-tester.py\033[0m"
echo -e "\nFor AWS-OIDC-Tester:"
echo -e "> \033[0;92mpython3 aws-oidc-tester.py\033[0m"

# Expected output for AWS-OIDC-Tester
echo -e "\n\033[0;93mExpected Result (AWS-OIDC-Tester):\033[0m"
echo -e "\nIf running the AWS tool with the correct credentials, you should expect an output like the following:"
echo -e "\n###########################"
echo -e "Github OIDC Scanner - AWS"
echo -e "By Rezonate.io"
echo -e "###########################"
echo -e "\nAuthenticating"
echo -e "Searching for OIDC Trust in the account"
echo -e "Checking if github is trusted"
echo -e "Found OIDC trust for GitHub. Searching for relevant roles"
echo -e "Found 1 roles that trust GitHub OIDC. evaluating them"
echo -e "Evaluating github , arn:aws:iam::741448947753:role/github"
echo -e "-------------------------"
echo -e "Found Vulnerable roles!"
echo -e "--------------------------"
echo -e "Vulnerable to Bypassable Subject:"
echo -e "[!]arn:aws:iam::123456789012:role/github"
echo -e "\nThis output indicates that the AWS roles could be vulnerable to bypassable subjects due to misconfiguration."

# Expected output for GCP-OIDC-Tester
echo -e "\n\033[0;93mExpected Result (GCP-OIDC-Tester):\033[0m"
echo -e "\nIf running the GCP tool with the correct credentials, you should expect an output like the following:"
echo -e "\n###########################"
echo -e "Github OIDC Scanner - GCP"
echo -e "By Rezonate.io"
echo -e "###########################"
echo -e "\nAuthenticating"
echo -e "Searching for OIDC Trust in the account"
echo -e "Checking if github is trusted"
echo -e "Found OIDC trust for GitHub. Searching for relevant service accounts"
echo -e "Found 1 service account that trusts GitHub OIDC. evaluating them"
echo -e "Evaluating github , serviceAccount:your-gcp-project@github.iam.gserviceaccount.com"
echo -e "-------------------------"
echo -e "Found Vulnerable service accounts!"
echo -e "--------------------------"
echo -e "Vulnerable to Bypassable Subject:"
echo -e "[!]serviceAccount:your-gcp-project@github.iam.gserviceaccount.com"
echo -e "\nThis output indicates that the GCP service accounts could be vulnerable to bypassable subjects due to misconfiguration."

# Provide a reference link for more information
echo -e "\nFor more information, visit: \033[0;94mhttps://github.com/Rezonate-io/github-oidc-checker\033[0m"

# Keep the terminal open
exec zsh
