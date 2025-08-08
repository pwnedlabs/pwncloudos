#!/bin/zsh

# Display help for CloudFox
echo -e "\nExecuting: \033[0;92mcloudfox -h\033[0m"
cloudfox -h 2>/dev/null

# Provide example usage
echo -e "\n\033[0;94mExamples:\033[0m"

# Example usage: AWS - Run all checks
echo -e "\n\033[0;93mExample: Run all AWS checks:\033[0m"
echo -e "\033[0;37mTo run all AWS checks and record output locally, use the following command:\n\033[0m"
echo -e "> \033[0;92mcloudfox aws -p cflab all-checks\033[0m"

# Example usage: AWS - List active access keys
echo -e "\n\033[0;93mExample: List active access keys in AWS:\033[0m"
echo -e "\033[0;37mTo map all active access keys for users in AWS, use:\n\033[0m"
echo -e "> \033[0;92mcloudfox aws --profile cf-exec -v2 access-keys\033[0m"

# Example usage: Azure - Display current Azure context
echo -e "\n\033[0;93mExample: Display current Azure context:\033[0m"
echo -e "\033[0;37mTo get information on the current tenant, subscriptions, and resource groups:\n\033[0m"
echo -e "> \033[0;92mcloudfox azure whoami\033[0m"

# Example usage: Azure - Enumerate VMs
echo -e "\n\033[0;93mExample: Enumerate VMs in Azure:\033[0m"
echo -e "\033[0;37mTo list Compute instances for a specific subscription in Azure:\n\033[0m"
echo -e "> \033[0;92mcloudfox azure vms --subscription AAAAAAAA-AAAA-AAAA-AAAA-AAAAAAAA\033[0m"

# Example usage: GCP - Help for GCP Modules
echo -e "\n\033[0;93mExample: Get help for GCP modules:\033[0m"
echo -e "\033[0;37mTo see available GCP commands and modules:\n\033[0m"
echo -e "> \033[0;92mcloudfox gcp -h\033[0m"

# Provide reference links
echo -e "\nFor more information, visit:"
echo -e "CloudFox Documentation: \033[0;94mhttps://github.com/BishopFox/cloudfox\033[0m"
echo -e "AWS Commands Reference: \033[0;94mhttps://github.com/BishopFox/cloudfox/wiki/AWS-Commands\033[0m"
echo -e "Azure Commands Reference: \033[0;94mhttps://github.com/BishopFox/cloudfox/wiki/Azure-Commands\033[0m"
echo -e "Prerequisites: \033[0;94mhttps://github.com/BishopFox/cloudfox#prerequisites\033[0m"

# Keep the terminal open
exec zsh
