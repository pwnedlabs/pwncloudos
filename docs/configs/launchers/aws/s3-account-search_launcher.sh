#!/bin/zsh

# Execute the help command for s3-account-search
echo -e "\nExecuting: \033[1;32ms3-account-search -h\033[0m"
s3-account-search -h 2>/dev/null


# Display the usage instructions
echo -e "\n\033[0;92mS3 Account Search Tool\033[0m"
echo -e "\nThis tool helps in searching for specific AWS S3 buckets and objects by leveraging IAM roles."

# Provide general information about the tool
echo -e "\n\033[0;93mABOUT:\033[0m"
echo -e "The S3 Account Search Tool allows users to search AWS S3 buckets and objects using IAM roles, making it easy to audit access and identify potential misconfigurations."

# Usage details
echo -e "\n\033[0;94mUSAGE:\033[0m"
echo -e "You can use this tool to search buckets and objects with a role ARN and S3 path."

echo -e "\nExample with a bucket:"
echo -e "> \033[0;92ms3-account-search arn:aws:iam::123456789012:role/s3_read s3://my-bucket\033[0m"

echo -e "\nExample with an object:"
echo -e "> \033[0;92ms3-account-search arn:aws:iam::123456789012:role/s3_read s3://my-bucket/path/to/object.ext\033[0m"

echo -e "\nExample without 's3://':"
echo -e "> \033[0;92ms3-account-search arn:aws:iam::123456789012:role/s3_read my-bucket\033[0m"

echo -e "\nExample with a source profile:"
echo -e "> \033[0;92ms3-account-search --profile source_profile arn:aws:iam::123456789012:role/s3_read s3://my-bucket\033[0m"

# Provide a reference link for more information
echo -e "\nFor more information, visit: \033[0;94mhttps://github.com/WeAreCloudar/s3-account-search\033[0m"

# Keep the terminal open
exec zsh
