#!/bin/zsh

# Execute the help command for aws-enumerator
echo -e "\nExecuting: \033[0;92maws-enumerator -h\033[0m"
aws-enumerator -h 2>/dev/null

# Provide example usage
echo -e "\n\033[0;94mExamples:\033[0m"

# Credentials setup
echo -e "\n\033[0;93mCredentials setup:\033[0m"
echo -e "\033[0;97mTo setup credentials, you should use cred subcommand and supply credentials.\n\033[0m"
echo -e "> \033[0;92maws-enumerator cred -aws_access_key_id AKIA****XKU -aws_region us-west-2 -aws_secret_access_key kIm6m*******5JPF\033[0m"

# Enumerate all services
echo -e "\n\033[0;93mEnumeration:\033[0m"
echo -e "\033[0;97mTo enumerate all services, you can use the enum subcommand like this:\n\033[0m"
echo -e "> \033[0;92maws-enumerator enum -services all\033[0m"

# Enumerate specific services
echo -e "\n\033[0;93mEnumerate specific services:\033[0m"
echo -e "\033[0;97mTo check specific services (e.g., IAM, S3, RDS), use the following command:\n\033[0m"
echo -e "> \033[0;92maws-enumerator enum -services iam,sts,rds\033[0m"

# Using speed flag
echo -e "\n\033[0;93mUsing speed flag:\033[0m"
echo -e "\033[0;97mYou can specify the speed of the enumeration using the speed flag:\n\033[0m"
echo -e "> \033[0;92maws-enumerator enum -services all -speed slow\033[0m"

# Dump collected information
echo -e "\n\033[0;93mDump collected information:\033[0m"
echo -e "\033[0;97mTo analyze the collected information, you can use the dump subcommand:\n\033[0m"
echo -e "> \033[0;92maws-enumerator dump -services all\033[0m"

# Filter API calls
echo -e "\n\033[0;93mFilter API calls:\033[0m"
echo -e "\033[0;97mTo filter API calls, use the -filter option, e.g., to filter for 'GetA':\n\033[0m"
echo -e "> \033[0;92maws-enumerator dump -services iam -filter GetA\033[0m"

# Retrieve API call result
echo -e "\n\033[0;93mRetrieve API call result:\033[0m"
echo -e "\033[0;97mTo retrieve the result of an API call, use the -print option:\n\033[0m"
echo -e "> \033[0;92maws-enumerator dump -services iam -filter ListS -print\033[0m"

# Provide the reference link
echo -e "\nFor more information, visit: \033[0;94mhttps://github.com/shabarkin/aws-enumerator\033[0m"

# Keep the terminal open
exec zsh
