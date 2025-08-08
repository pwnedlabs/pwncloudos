#!/bin/zsh

# Execute the help command for trufflehog
echo -e "\nExecuting: \033[0;92mtrufflehog -h\033[0m"
trufflehog -h 2>/dev/null
sleep 2  # Pause for 2 seconds before proceeding

# Provide example usage
echo -e "\n\033[0;94mExamples:\033[0m"

# Example 1: Scan a repo for verified secrets
echo -e "\n\033[0;93mScan a repo for verified secrets:\033[0m"
echo -e "> \033[0;92mtrufflehog git https://github.com/example-org/sample-repo --results=verified,unknown\033[0m"

# Example 2: Scan a GitHub Org for verified secrets
echo -e "\n\033[0;93mScan a GitHub Org for verified secrets:\033[0m"
echo -e "> \033[0;92mtrufflehog github --org=example-org --results=verified,unknown\033[0m"

# Example 3: Scan a local repository with regex and entropy checks disabled
echo -e "\n\033[0;93mScan a local repository with regex and entropy checks disabled:\033[0m"
echo -e "> \033[0;92mtrufflehog --regex --entropy=False cargo-logistics-dev/\033[0m"
echo -e "This reveals AWS keys and provides the name of the affected commit."

# Example 4: Scan a repository URL without downloading it locally
echo -e "\n\033[0;93mScan a repository URL without downloading it locally:\033[0m"
echo -e "> \033[0;92mtrufflehog https://github.com/huge-logistics/cargo-logistics-dev --max_depth 2\033[0m"

# Example 5: Scan an S3 bucket for verified keys
echo -e "\n\033[0;93mScan an S3 bucket for verified keys:\033[0m"
echo -e "> \033[0;92mtrufflehog s3 --bucket=<bucket name> --results=verified,unknown\033[0m"

# Example 6: Scan S3 buckets using IAM Roles
echo -e "\n\033[0;93mScan S3 buckets using IAM Roles:\033[0m"
echo -e "> \033[0;92mtrufflehog s3 --role-arn=<iam role arn>\033[0m"

# Example 7: Scan a GitHub Repo using SSH authentication in Docker
echo -e "\n\033[0;93mScan a GitHub Repo using SSH authentication in Docker:\033[0m"
echo -e "> \033[0;92mdocker run --rm -v \"$HOME/.ssh:/root/.ssh:ro\" trufflesecurity/trufflehog:latest git ssh://github.com/example-user/sample-repo\033[0m"

# Example 8: Scan individual files or directories
echo -e "\n\033[0;93mScan individual files or directories:\033[0m"
echo -e "> \033[0;92mtrufflehog filesystem path/to/file1.txt path/to/dir\033[0m"

# Example 9: Scan a local Git repo
echo -e "\n\033[0;93mScan a local Git repo:\033[0m"
echo -e "> \033[0;92mgit clone git@example.com:example-org/sample-repo.git\033[0m"
echo -e "> \033[0;92mtrufflehog git file://sample-repo --results=verified,unknown\033[0m"

# Example 10: Scan GCS buckets for verified secrets
echo -e "\n\033[0;93mScan GCS buckets for verified secrets:\033[0m"
echo -e "> \033[0;92mtrufflehog gcs --project-id=<project-ID> --cloud-environment --results=verified,unknown\033[0m"

# Example 11: Scan a Docker image for verified secrets
echo -e "\n\033[0;93mScan a Docker image for verified secrets:\033[0m"
echo -e "> \033[0;92mtrufflehog docker --image trufflesecurity/secrets --results=verified,unknown\033[0m"

# Example 12: Scan in CI/CD environments
echo -e "\n\033[0;93mScan in CI/CD environments:\033[0m"
echo -e "> \033[0;92mtrufflehog git file://. --since-commit main --branch feature-1 --results=verified,unknown --fail\033[0m"

# Example 13: Scan a Postman workspace
echo -e "\n\033[0;93mScan a Postman workspace:\033[0m"
echo -e "> \033[0;92mtrufflehog postman --token=<postman api token> --workspace-id=<workspace id>\033[0m"

# Example 14: Scan a Jenkins server
echo -e "\n\033[0;93mScan a Jenkins server:\033[0m"
echo -e "> \033[0;92mtrufflehog jenkins --url https://jenkins.example.com --username admin --password admin\033[0m"

# Example 15: Scan an Elasticsearch server
echo -e "\n\033[0;93mScan an Elasticsearch server:\033[0m"
echo -e "> \033[0;92mtrufflehog elasticsearch --nodes 192.168.14.3 192.168.14.4 --username truffle --password hog\033[0m"

# Example 16: Scan GitHub for hidden commits
echo -e "\n\033[0;93mScan GitHub for hidden commits:\033[0m"
echo -e "> \033[0;92mtrufflehog github-experimental --repo https://github.com/<USER>/<REPO>.git --object-discovery\033[0m"

# Reference link
echo -e "\nFor more information, visit: \033[0;94mhttps://github.com/trufflesecurity/trufflehog\033[0m"

# Keep the terminal open
exec zsh
