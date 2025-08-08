#!/bin/zsh

# Clear the terminal
clear

# Define color variables
ORANGE='\033[0;33m'  # Yellow (Not bold)
BLUE='\033[1;34m'    # Blue
WHITE='\033[0;37m'   # White
NC='\033[0m'         # No Color

# Instructions
echo -e "\nExecuting: \033[0;37msudo docker-compose -f ./bloodhound.yml up\033[0m"
echo -e "${WHITE}sudo docker-compose -f ./bloodhound.yml up${NC}"

# Example usage for retrieving logs
echo -e "\n\033[0;93mTo retrieve the initial password, run the following command:\033[0m"
echo -e "${WHITE}docker logs --tail 1000 bloodhound-bloodhound-1 | grep 'Initial Password'${NC}"

# Info about accessing the GUI
echo -e "\n\033[1;34mTo access the GUI, visit: \033[0m${BLUE}http://localhost:8080/ui/login${NC}"
echo -e "\033[0;37mEnsure no other applications are using port 8080.\033[0m"

# Additional information
echo -e "\n\033[1;34mUse the username 'admin' and the randomly generated password from the logs.\033[0m"

# Keep the terminal open
exec zsh
