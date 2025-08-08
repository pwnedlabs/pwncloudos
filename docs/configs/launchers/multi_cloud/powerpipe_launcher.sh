#!/bin/zsh

# Display help for Powerpipe
echo -e "Executing: \033[0;92mpowerpipe --help\033[0m"
powerpipe --help 2>/dev/null

# Provide example usage
echo -e "\n\033[0;94m=== Powerpipe Usage Examples ===\033[0m"

# 1. Check a directory with the default mod
echo -e "\n\033[0;93m[1] Scan a directory using the default mod:\033[0m"
echo -e "> \033[0;92mpowerpipe check .\033[0m"

# 2. Run a specific compliance mod (e.g., AWS CIS Foundations)
echo -e "\n\033[0;93m[2] Run the CIS AWS Foundations Benchmark:\033[0m"
echo -e "> \033[0;92mpowerpipe check --mod turbot/aws_compliance\033[0m"

# 3. Check a specific Terraform file
echo -e "\n\033[0;93m[3] Scan a specific Terraform file:\033[0m"
echo -e "> \033[0;92mpowerpipe check main.tf\033[0m"

# 4. Export results in JSON format
echo -e "\n\033[0;93m[4] Output results in JSON format:\033[0m"
echo -e "> \033[0;92mpowerpipe check . --output json\033[0m"

# 5. Export results in Markdown format
echo -e "\n\033[0;93m[5] Output results in Markdown format:\033[0m"
echo -e "> \033[0;92mpowerpipe check . --output markdown\033[0m"

# 6. Use a custom local mod
echo -e "\n\033[0;93m[6] Use a custom mod from a local directory:\033[0m"
echo -e "> \033[0;92mpowerpipe check . --mod ./my-custom-mod\033[0m"

# 7. List available mods
echo -e "\n\033[0;93m[7] List available mods:\033[0m"
echo -e "> \033[0;92mpowerpipe mod list\033[0m"

# 8. Install a new mod
echo -e "\n\033[0;93m[8] Install a mod from the registry:\033[0m"
echo -e "> \033[0;92mpowerpipe mod install turbot/aws_compliance\033[0m"

# 9. Validate a Powerpipe pipeline file
echo -e "\n\033[0;93m[9] Validate a pipeline file:\033[0m"
echo -e "> \033[0;92mpowerpipe validate my-pipeline.sp\033[0m"

# Reference for more information
echo -e "\n\033[0;94mFor more information, visit:\033[0m"
echo -e "\033[0;92mhttps://powerpipe.io/docs\033[0m"
echo -e "\033[0;92mhttps://github.com/turbot/steampipe/tree/main/pipes/powerpipe\033[0m"

# Keep the terminal open
exec zsh
