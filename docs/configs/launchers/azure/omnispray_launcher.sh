#!/bin/zsh

# Navigate to the tool's directory
cd /opt/azure_tools/Omnispray

# Display introductory information
echo -e "\n\033[0;94mOmnispray: A tool for O365 user enumeration and password spraying.\033[0m"
echo -e "\033[0;37mOmnispray is used for Office 365 user enumeration and password spraying attacks.\033[0m"
echo -e "\033[0;37mIt can interact with multiple modules for various attack vectors.\n\033[0m"

# Execute the help command for omnispray
echo -e "\nExecuting: \033[0;92mpython3 omnispray.py -h\033[0m"
python3 omnispray.py -h 2>/dev/null

# Provide example usage
echo -e "\n\033[0;94mExamples:\033[0m"

# O365 user enumeration via the Office module
echo -e "\n\033[0;93mO365 user enumeration via the Office module:\033[0m"
echo -e "\033[0;37mThis command performs user enumeration using the o365_enum_office module.\n\033[0m"
echo -e "> \033[0;92mpython3 omnispray.py --type enum -uf users.txt --module o365_enum_office\033[0m"

# O365 password spraying via the ActiveSync module
echo -e "\n\033[0;93mO365 password spraying via the ActiveSync module:\033[0m"
echo -e "\033[0;37mThis command performs password spraying using the o365_spray_activesync module.\n\033[0m"
echo -e "> \033[0;92mpython3 omnispray.py --type spray -uf users.txt -pf passwords.txt --module o365_spray_activesync --count 3 --lockout 30\033[0m"

# Expected Input File Formats
echo -e "\n\033[0;94mExpected Input File Formats:\033[0m"

# users.txt file format
echo -e "\n\033[0;93musers.txt\033[0m: \033[0;37mA file containing the list of usernames to be tested.\033[0m"
echo -e "\nExample format:"
echo -e "\033[0;92muser1@domain.com\033[0m"
echo -e "\033[0;92muser2@domain.com\033[0m"
echo -e "\033[0;92muser3@domain.com\033[0m"

# passwords.txt file format
echo -e "\n\033[0;93mpasswords.txt\033[0m: \033[0;37mA file containing the list of passwords for the spraying attempt.\033[0m"
echo -e "\nExample format:"
echo -e "\033[0;92mpassword1\033[0m"
echo -e "\033[0;92mpassword2\033[0m"
echo -e "\033[0;92mpassword3\033[0m"

# Provide the reference link
echo -e "\nFor more information, visit: \033[0;94mhttps://github.com/0xZDH/Omnispray\033[0m"

# Keep the terminal open
exec zsh
