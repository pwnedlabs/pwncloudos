#!/bin/zsh

# Execute the help command for oh365userfinder
echo -e "\nExecuting: \033[0;92mpython3 oh365userfinder.py -h\033[0m"
python3 oh365userfinder.py -h 2>/dev/null

# Provide example usage
echo -e "\n\033[0;94mExamples Commands:\033[0m"

# Validate a Domain Name in O365
echo -e "\n\033[0;93mValidate a Domain Name in O365:\033[0m"
echo -e "\033[0;37mThis command validates a domain name to check for valid email addresses in the Office 365 tenant.\n\033[0m"
echo -e "> \033[0;92mpython3 oh365userfinder.py -d megabigtech.com\033[0m"

# Validate a single email
echo -e "\n\033[0;93mValidate a single email:\033[0m"
echo -e "\033[0;37mThis command checks if a specific email address exists in the Office 365 tenant.\n\033[0m"
echo -e "> \033[0;92mpython3 oh365userfinder.py -e test@megabigtech.com\033[0m"

# Validate a list of emails and write to file
echo -e "\n\033[0;93mValidate a list of emails and write to file:\033[0m"
echo -e "\033[0;37mThis command validates multiple email addresses and writes the results to a file for further review.\n\033[0m"
echo -e "> \033[0;92mpython3 oh365userfinder.py -r testemails.txt -w valid.txt\033[0m"

# Validate a list of emails, write to file and timeout between requests
echo -e "\n\033[0;93mValidate a list of emails, write to file and timeout between requests:\033[0m"
echo -e "\033[0;37mThis command validates a list of emails, saves the results to a file, and adds a delay between requests to prevent rate limiting.\n\033[0m"
echo -e "> \033[0;92mpython3 oh365userfinder.py -r emails.txt -w validemails.txt -t 30\033[0m"

# Validate a list of emails and write to CSV
echo -e "\n\033[0;93mValidate a list of emails and write to CSV:\033[0m"
echo -e "\033[0;37mThis command validates emails from a list, writes the results to a CSV file, and supports timing for requests.\n\033[0m"
echo -e "> \033[0;92mpython3 oh365userfinder.py -r emails.txt -c validemails.csv -t 30\033[0m"

# Password Spray a list of emails
echo -e "\n\033[0;93mPassword Spray a list of emails:\033[0m"
echo -e "\033[0;37mThis command attempts to perform a password spraying attack using a list of emails and a single password.\n\033[0m"
echo -e "> \033[0;92mpython3 oh365userfinder.py -p <password> --pwspray --elist <listname>\033[0m"

# Provide the reference link
echo -e "\nFor more information, visit: \033[1;34mhttps://github.com/dievus/Oh365UserFinder\033[0m"

# Keep the terminal open
exec zsh
