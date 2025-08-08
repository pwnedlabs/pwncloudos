#!/bin/zsh

# Display help for prowler
echo -e "\nExecuting: \033[0;92mprowler -h\033[0m"
prowler -h 2>/dev/null

# Provide example usage
echo -e "\n\033[0;94mExamples:\033[0m"

# Example usage: Run all checks
echo -e "\n\033[0;93mExample: Run all checks:\033[0m"
echo -e "\033[0;37mTo run all the security checks for your AWS environment, use the following command:\n\033[0m"
echo -e "> \033[0;92mprowler\033[0m"

# Example usage: Run specific checks (e.g., IAM)
echo -e "\n\033[0;93mExample: Run specific checks for IAM:\033[0m"
echo -e "\033[0;37mTo run specific checks, use the -M flag followed by the check module (e.g., IAM):\n\033[0m"
echo -e "> \033[0;92mprowler -M iam\033[0m"

# Example usage: Run with output to a file
echo -e "\n\033[0;93mExample: Run and save output to a file:\033[0m"
echo -e "\033[0;37mTo save the output of the checks to a file, use the -o flag:\n\033[0m"
echo -e "> \033[0;92mprowler -M iam -o output.json\033[0m"

# Example usage: Run with specific profile
echo -e "\n\033[0;93mExample: Run with a specific AWS profile:\033[0m"
echo -e "\033[0;37mTo specify an AWS profile, use the -p flag followed by the profile name:\n\033[0m"
echo -e "> \033[0;92mprowler -p my-profile\033[0m"

# Example usage: Check specific region
echo -e "\n\033[0;93mExample: Run in a specific region:\033[0m"
echo -e "\033[0;37mTo run the checks in a specific region, use the -r flag followed by the region name:\n\033[0m"
echo -e "> \033[0;92mprowler -r us-west-2\033[0m"

# Example usage: Run specific checks and filter by severity
echo -e "\n\033[0;93mExample: Run checks and filter by severity:\033[0m"
echo -e "\033[0;37mTo filter the checks based on severity (e.g., critical), use the -s flag:\n\033[0m"
echo -e "> \033[0;92mprowler -M iam -s critical\033[0m"

# Example usage: Run provider-specific checks
echo -e "\n\033[0;93mExample: Run checks for a specific provider:\033[0m"
echo -e "\033[0;37mTo specify a provider, use the following command:\n\033[0m"
echo -e "> \033[0;92mprowler <provider>\033[0m"

# Example usage: Open the Prowler Dashboard
echo -e "\n\033[0;93mExample: Open the Prowler Dashboard:\033[0m"
echo -e "\033[0;37mTo view the Prowler dashboard, use the following command:\n\033[0m"
echo -e "> \033[0;92mprowler dashboard\033[0m"

# Provide a reference link for more information
echo -e "\nFor more information, visit: \033[0;94mhttps://github.com/prowler-cloud/prowler\033[0m"

# Keep the terminal open
exec zsh
