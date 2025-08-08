#!/bin/zsh

# Execute the help command for sprayshark
echo -e "\nExecuting: \033[0;92msprayshark spray -h\033[0m"
sprayshark spray -h 2>/dev/null

# Provide example usage
echo -e "\n\033[0;94mExamples:\033[0m"

# Single user spray
echo -e "\n\033[0;93mSingle user spray:\033[0m"
echo -e "\033[0;97mBasic usage with single user and password:\n\033[0m"
echo -e "> \033[0;92msprayshark spray -u test@helviojunior.com.br -p Test@123 --write-jsonl\033[0m"

# Multiple users with password
echo -e "\n\033[0;93mMultiple users:\033[0m"
echo -e "\033[0;97mSpray a single password against multiple emails from file:\n\033[0m"
echo -e "> \033[0;92msprayshark spray -U emails.txt -p Test@123 --save-content --write-db\033[0m"

# Multiple users and passwords
echo -e "\n\033[0;93mUser and password lists:\033[0m"
echo -e "\033[0;97mUse both a username list and a password list:\n\033[0m"
echo -e "> \033[0;92msprayshark spray -U emails.txt -P passwords.txt\033[0m"

# From credentials file
echo -e "\n\033[0;93mFrom credentials file:\033[0m"
echo -e "\033[0;97mProvide credentials with delimiter:\n\033[0m"
echo -e "> \033[0;92msprayshark spray -C credentials.txt -D ':'\033[0m"

# With proxy and screenshots
echo -e "\n\033[0;93mWith proxy and screenshots:\033[0m"
echo -e "\033[0;97mSpray using a proxy and save screenshots of results:\n\033[0m"
echo -e "> \033[0;92msprayshark spray -U emails.txt -P passwords.txt --proxy socks4://127.0.0.1:1337 --write-all-screenshots\033[0m"

# From piped input
echo -e "\n\033[0;93mFrom piped input:\033[0m"
echo -e "\033[0;97mUse piped usernames from a file:\n\033[0m"
echo -e "> \033[0;92mcat targets.txt | sprayshark spray usernames - -p Test@123 --write-db --write-jsonl\033[0m"

# Provide the reference link
echo -e "\nFor more information, visit: \033[0;94mhttps://github.com/helviojunior/sprayshark\033[0m"

# Keep the terminal open
exec zsh
