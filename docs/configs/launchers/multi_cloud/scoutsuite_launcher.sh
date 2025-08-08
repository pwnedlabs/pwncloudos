#!/bin/zsh

# Execute the help command for ScoutSuite
echo -e "\nExecuting: \033[0;92mscout --help\033[0m"
scout --help 2>/dev/null

# Provide example usage
echo -e "\n\033[0;94mExamples:\033[0m"

# AWS usage
echo -e "\n\033[0;93mAmazon Web Services (AWS):\033[0m"
echo -e "\033[0;37mTo scan an AWS account using a specific profile:\n\033[0m"
echo -e "> \033[0;92mscout aws --profile PROFILE\033[0m"

# Azure usage
echo -e "\n\033[0;93mAzure:\033[0m"
echo -e "\033[0;37mTo scan an Azure account using the CLI for authentication:\n\033[0m"
echo -e "> \033[0;92mscout azure --cli\033[0m"

# Google Cloud Platform usage
echo -e "\n\033[0;93mGoogle Cloud Platform (GCP):\033[0m"
echo -e "\033[0;37mTo scan a GCP account using user account authentication:\n\033[0m"
echo -e "> \033[0;92mscout gcp --user-account\033[0m"

# Alibaba Cloud usage
echo -e "\n\033[0;93mAlibaba Cloud:\033[0m"
echo -e "\033[0;37mTo scan an Alibaba Cloud account:\n\033[0m"
echo -e "> \033[0;92mscout aliyun\033[0m"

# Oracle Cloud usage
echo -e "\n\033[0;93mOracle Cloud Infrastructure (OCI):\033[0m"
echo -e "\033[0;37mTo scan an Oracle Cloud Infrastructure account:\n\033[0m"
echo -e "> \033[0;92mscout oci\033[0m"

# Kubernetes usage
echo -e "\n\033[0;93mKubernetes:\033[0m"
echo -e "\033[0;37mTo scan a Kubernetes cluster:\n\033[0m"
echo -e "> \033[0;92mscout kubernetes\033[0m"

# DigitalOcean usage
echo -e "\n\033[0;93mDigitalOcean (DO):\033[0m"
echo -e "\033[0;37mTo scan a DigitalOcean account:\n\033[0m"
echo -e "> \033[0;92mscout do\033[0m"

# Generate and view the report
echo -e "\n\033[0;93mGenerate and view the report:\033[0m"
echo -e "\033[0;37mAfter scanning, ScoutSuite will automatically generate a local HTML report and open it in your default browser.\n\033[0m"

# Provider-specific help
echo -e "\n\033[0;93mProvider-specific help:\033[0m"
echo -e "\033[0;37mTo get help for a specific provider (e.g., AWS, Azure, GCP):\n\033[0m"
echo -e "> \033[0;92mscout aws --help\033[0m"

# Provide the reference link
echo -e "\nFor more information, visit: \033[0;94mhttps://github.com/nccgroup/ScoutSuite\033[0m"

# Keep the terminal open
exec zsh
