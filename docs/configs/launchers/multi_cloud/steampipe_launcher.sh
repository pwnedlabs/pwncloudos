#!/bin/zsh

# Display help for Steampipe
echo -e "Executing: \033[0;92msteampipe --help\033[0m"
steampipe --help 2>/dev/null

# Provide example usage
echo -e "\n\033[0;94m=== Steampipe Usage Examples ===\033[0m"

# 1. Interactive Shell
echo -e "\n\033[0;93m[1] Launch Steampipe Interactive Shell:\033[0m"
echo -e "> \033[0;92msteampipe query\033[0m"

# 2. Query AWS S3 Buckets
echo -e "\n\033[0;93m[2] List AWS S3 Buckets:\033[0m"
echo -e "> \033[0;92mselect * from aws_s3_bucket;\033[0m"

# 3. Detect Underutilized EC2 Instances
echo -e "\n\033[0;93m[3] Find EC2 Instances with Low CPU Utilization:\033[0m"
echo -e "> \033[0;92mselect * from aws_ec2_instance where state = 'running' and cpu_utilization < 10;\033[0m"

# 4. Aggregate Query Across Accounts
echo -e "\n\033[0;93m[4] Query S3 Buckets Across All AWS Accounts:\033[0m"
echo -e "> \033[0;92mselect * from aws_all.aws_s3_bucket;\033[0m"

# 5. Run a Compliance Benchmark
echo -e "\n\033[0;93m[5] Run AWS CIS Benchmark Checks:\033[0m"
echo -e "> \033[0;92msteampipe check aws_compliance.benchmark.cis_v150\033[0m"

# 6. Generate a Report
echo -e "\n\033[0;93m[6] Export Compliance Report to Markdown:\033[0m"
echo -e "> \033[0;92msteampipe check aws_compliance.benchmark.cis_v150 --export=report.md\033[0m"

# 7. Plugin Management
echo -e "\n\033[0;93m[7] List Installed Plugins:\033[0m"
echo -e "> \033[0;92msteampipe plugin list\033[0m"

echo -e "\n\033[0;93m[8] Install Azure Plugin:\033[0m"
echo -e "> \033[0;92msteampipe plugin install azure\033[0m"

echo -e "\n\033[0;93m[9] Configure a Plugin (e.g., AWS):\033[0m"
echo -e "> \033[0;92mvim ~/.steampipe/config/aws.spc\033[0m"

# 8. Useful Tip: Output Formats
echo -e "\n\033[0;93m[10] Export Query to CSV:\033[0m"
echo -e "> \033[0;92msteampipe query \"select * from aws_iam_user\" --output csv > users.csv\033[0m"

# Provide a reference link for more information
echo -e "\n\033[0;94mFor more information, visit:\033[0m"
echo -e "\033[0;92mhttps://steampipe.io/docs\033[0m"
echo -e "\033[0;92mhttps://github.com/turbot/steampipe\033[0m"

# Keep the terminal open
exec zsh

