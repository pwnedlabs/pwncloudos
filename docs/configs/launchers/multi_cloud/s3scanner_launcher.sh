#!/bin/zsh

# Display help for s3scanner
echo -e "\nExecuting: \033[0;92ms3scanner -h\033[0m"
s3scanner -h 2>&1

# Provide example usage
echo -e "\n\033[0;94mExamples:\033[0m"

# Example 1: Scan a single bucket
echo -e "\n\033[0;93mExample: Scan a single bucket:\033[0m"
echo -e "\033[0;37mTo scan a specific bucket, use the following command:\n\033[0m"
echo -e "> \033[0;92ms3scanner -bucket my-bucket\033[0m"

# Example 2: Scan buckets listed in a file
echo -e "\n\033[0;93mExample: Scan buckets from a file:\033[0m"
echo -e "\033[0;37mTo scan multiple buckets listed in a file, use the following command:\n\033[0m"
echo -e "> \033[0;92ms3scanner -bucket-file names.txt\033[0m"

# Example 3: Scan with object enumeration
echo -e "\n\033[0;93mExample: Scan with object enumeration:\033[0m"
echo -e "\033[0;37mTo enumerate all objects in a bucket, use the following command:\n\033[0m"
echo -e "> \033[0;92ms3scanner -bucket my-bucket -enumerate\033[0m"

# Example 4: Use a different provider
echo -e "\n\033[0;93mExample: Specify a storage provider:\033[0m"
echo -e "\033[0;37mTo specify a storage provider, such as GCP, use:\n\033[0m"
echo -e "> \033[0;92ms3scanner -bucket my-bucket -provider gcp\033[0m"

# Provide reference links
echo -e "\nFor more information, visit:"
echo -e "S3Scanner Documentation: \033[0;94mhttps://github.com/sa7mon/S3Scanner\033[0m"

# Keep the terminal open
exec zsh
