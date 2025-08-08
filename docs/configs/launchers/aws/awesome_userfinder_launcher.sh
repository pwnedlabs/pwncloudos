#!/bin/zsh

# Display the usage instructions
echo -e "\n\033[0;92mAWeSomeUserFinder Tool\033[0m"
echo -e "\nThis tool helps in enumerating IAM usernames and performing password spraying attacks on AWS."

# Provide general information about the tool
echo -e "\n\033[0;93mABOUT:\033[0m"
echo -e "AWeSomeUserFinder is a tool to help security professionals enumerate AWS IAM usernames and conduct password spraying attacks, aiding in the discovery of weak or misconfigured credentials."

# Usage details
echo -e "\n\033[0;94mUSAGE:\033[0m"
echo -e "You can use this tool to enumerate IAM usernames or perform password spraying attacks with different options."

echo -e "\nExample: Username Enumeration:"
echo -e "> \033[0;92mpython3 AWeSomeUserFinder.py -f -ak <accesskey> -sk <secretkey> -a <account_id> -r <username_list> -rn <role_name>\033[0m"

echo -e "\nExample: Password Spraying:"
echo -e "> \033[0;92mpython3 AWeSomeUserFinder.py -s -a <account_id> -r <username_list>\033[0m"

echo -e "\nExample: Password Spraying with Custom Timeout:"
echo -e "> \033[0;92mpython3 AWeSomeUserFinder.py -s -a <account_id> -r <username_list> -t 5\033[0m"

# Provide reference links for further information
echo -e "\nFor more information, visit:"
echo -e "AWeSomeUserFinder Documentation: \033[0;94mhttps://github.com/dievus/AWeSomeUserFinder\033[0m"
echo -e "Username Enumeration Details: \033[0;94mhttps://github.com/dievus/AWeSomeUserFinder#username-enumeration\033[0m"
echo -e "Password Spraying Details: \033[0;94mhttps://github.com/dievus/AWeSomeUserFinder#password-spraying\033[0m"

# Keep the terminal open
exec zsh
