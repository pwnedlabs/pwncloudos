#!/bin/zsh

# Execute the help command for git-secrets
echo -e "\nExecuting: \033[0;92mgit secrets -h\033[0m"
git secrets -h 2>/dev/null

# Provide example usage
echo -e "\n\033[0;94mExamples:\033[0m"

# Scan files for prohibited patterns
echo -e "\n\033[0;93mScan files for prohibited patterns:\033[0m"
echo -e "\033[0;37mTo scan a specific file or directory recursively for secrets:\n\033[0m"
echo -e "> \033[0;92mgit secrets --scan -r path/to/directory\033[0m"

# Scan the Git history for secrets
echo -e "\n\033[0;93mScan Git history for secrets:\033[0m"
echo -e "\033[0;37mTo scan the entire Git repository history for secrets:\n\033[0m"
echo -e "> \033[0;92mgit secrets --scan-history\033[0m"

# Install git-secrets hooks
echo -e "\n\033[0;93mInstall git-secrets hooks:\033[0m"
echo -e "\033[0;37mTo install hooks for a Git repository or template directory:\n\033[0m"
echo -e "> \033[0;92mgit secrets --install\033[0m"

# Add prohibited patterns
echo -e "\n\033[0;93mAdd prohibited patterns:\033[0m"
echo -e "\033[0;37mTo add a prohibited pattern to the local configuration:\n\033[0m"
echo -e "> \033[0;92mgit secrets --add 'secret-pattern'\033[0m"

# List configured patterns
echo -e "\n\033[0;93mList configured patterns:\033[0m"
echo -e "\033[0;37mTo list prohibited patterns in the configuration:\n\033[0m"
echo -e "> \033[0;92mgit secrets --list\033[0m"

# Register AWS patterns
echo -e "\n\033[0;93mRegister AWS patterns:\033[0m"
echo -e "\033[0;37mTo add common AWS credential patterns to the configuration:\n\033[0m"
echo -e "> \033[0;92mgit secrets --register-aws\033[0m"

# Provide the reference link
echo -e "\nFor more information, visit: \033[0;94mhttps://github.com/awslabs/git-secrets\033[0m"

# Keep the terminal open
exec zsh
