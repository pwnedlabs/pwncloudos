#!/bin/zsh

# Execute the help command for automated-cloud-misconfiguration-testing
echo -e "\nExecuting: \033[0;92mpython3 main.py -h\033[0m"
python3 main.py -h 2>/dev/null

# Provide example usage
echo -e "\n\033[0;94mExamples:\033[0m"

# Basic usage
echo -e "\n\033[0;93mBasic Usage:\033[0m"
echo -e "\033[0;97mTo run automated enumeration and analysis:\n\033[0m"
echo -e "> \033[0;92mpython3 main.py --access-token <ACCESS_TOKEN> --project-id <PROJECT_ID> --service-account-email <SA_EMAIL> --auto-enum --region <REGION>\033[0m"

# Brute-force IAM permissions
echo -e "\n\033[0;93mIAM Permission Brute-Force:\033[0m"
echo -e "\033[0;97mTo brute-force IAM permissions manually:\n\033[0m"
echo -e "> \033[0;92mpython3 main.py --access-token <ACCESS_TOKEN> --project-id <PROJECT_ID> --service-account-email <SA_EMAIL> --bruteforce_gcp_iam yes\033[0m"

# Enumerate GCP services
echo -e "\n\033[0;93mGCP Service Enumeration:\033[0m"
echo -e "\033[0;97mEnable service enumeration explicitly (enabled by default):\n\033[0m"
echo -e "> \033[0;92mpython3 main.py --enumerate-gcp yes --access-token <ACCESS_TOKEN> --project-id <PROJECT_ID>\033[0m"

# Analyze permissions using rule engine
echo -e "\n\033[0;93mAnalyze GCP Permissions:\033[0m"
echo -e "\033[0;97mTo use rule engine to detect dangerous permissions:\n\033[0m"
echo -e "> \033[0;92mpython3 main.py --gcp_permission_analyze yes --access-token <ACCESS_TOKEN> --project-id <PROJECT_ID>\033[0m"

# Generate reports
echo -e "\n\033[0;93mGenerate HTML Reports:\033[0m"
echo -e "\033[0;97mReports are generated automatically (enabled by default):\n\033[0m"
echo -e "> \033[0;92mpython3 main.py --generate-report yes ...\033[0m"

# Optional: specify custom roles directory
echo -e "\n\033[0;93mCustom IAM Roles Directory:\033[0m"
echo -e "\033[0;97mTo use custom IAM role definitions:\n\033[0m"
echo -e "> \033[0;92mpython3 main.py --roles-directory roles/gcp/roles ...\033[0m"

# Provide the reference link
echo -e "\nFor more information, visit: \033[0;94mhttps://github.com/pwnedlabs/automated-cloud-misconfiguration-testing\033[0m"

# Keep the terminal open
exec zsh
