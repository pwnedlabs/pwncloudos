#!/bin/zsh

# Execute the help command for o365enum
echo -e "\nExecuting: \033[0;92mpython3 o365enum.py -h\033[0m"
python3 o365enum.py -h 2>/dev/null

# Provide example usage
echo -e "\n\033[0;94mExamples Commands:\033[0m"

# ActiveSync example
echo -e "\n\033[0;93mBasic enumeration with ActiveSync:\033[0m"
echo -e "\033[0;37mActiveSync is used to probe the ActiveSync endpoint to identify valid users based on Exchange Online's mobile sync responses.\n\033[0m"
echo -e "> \033[0;92mpython3 o365enum.py -u users.txt -p Password2 -n 1 -m activesync\033[0m"

# Office.com example
echo -e "\n\033[0;93mBasic enumeration with Office.com:\033[0m"
echo -e "\033[0;37mOffice.com enumeration simulates login attempts against the main Office portal to validate usernames through web responses.\n\033[0m"
echo -e "> \033[0;92mpython3 o365enum.py -u users.txt -p Password2 -n 1 -m office.com\033[0m"

# Autodiscover example (optional)
echo -e "\n\033[0;93mBasic enumeration with Autodiscover:\033[0m"
echo -e "\033[0;37mAutodiscover checks the endpoint to gather mailbox configuration details and identifies usernames based on authentication responses.\n\033[0m"
echo -e "> \033[0;92mpython3 o365enum.py -u users.txt -p Password2 -n 1 -m autodiscover\033[0m"

# Expected output format
echo -e "\n\033[0;94mExpected Output:\033[0m"
echo -e "\033[0;37musername,valid\nnonexistent@contoso.com,0\nexisting@contoso.com,1\033[0m"

# Provide the reference link
echo -e "\nFor more information, visit: \033[1;34mhttps://github.com/gremwell/o365enum\033[0m"

# Keep the terminal open
exec zsh
