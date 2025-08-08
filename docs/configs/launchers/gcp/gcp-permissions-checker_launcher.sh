#!/bin/zsh

# Execute the help command for gcp_perm_checker.py
echo -e "\nExecuting: \033[0;92m./gcp_perm_checker.py -h\033[0m"
./gcp_perm_checker.py -h 2>/dev/null

# Provide example usage
echo -e "\n\033[0;94mExamples:\033[0m"

# Basic Usage with service account key
echo -e "\n\033[0;93mUsing service account key:\033[0m"
echo -e "\033[0;97mTo enumerate permissions with a service account key file:\n\033[0m"
echo -e "> \033[0;92m./gcp_perm_checker.py path/to/key.json\033[0m"

# Using access token
echo -e "\n\033[0;93mUsing access token:\033[0m"
echo -e "\033[0;97mIf you prefer to use an access token instead of a key file:\n\033[0m"
echo -e "> \033[0;92m./gcp_perm_checker.py -Token ya29.a0AfH6S... -ProjectID your-project-id\033[0m"

# Project ID requirement
echo -e "\n\033[0;93mProject ID Requirement:\033[0m"
echo -e "\033[0;97mNote that when using -Token, the -ProjectID option is required.\033[0m"

# Provide the reference link
echo -e "\nFor more information, visit: \033[0;94mhttps://github.com/egre55/gcp-permissions-checker\033[0m"

# Keep the terminal open
exec zsh
