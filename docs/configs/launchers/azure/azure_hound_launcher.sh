#!/bin/zsh

# Navigate to the AzureHound folder
cd /opt/azure_tools/azure_hound

# Execute the help command for AzureHound
echo -e "\nExecuting: \033[0;92m./azurehound -h\033[0m"
./azurehound -h 2>/dev/null

# Provide example usage
echo -e "\n\033[0;94mExamples:\033[0m"

# Print all Azure Tenant data to stdout
echo -e "\n\033[0;93mPrint all Azure Tenant data to stdout:\033[0m"
echo -e "\033[0;37mThis command retrieves all Azure Tenant data and prints it to stdout.\n\033[0m"
echo -e "> \033[0;92mazurehound list -u \"\$USERNAME\" -p \"\$PASSWORD\" -t \"\$TENANT\"\033[0m"

# Print all Azure Tenant data to a file
echo -e "\n\033[0;93mPrint all Azure Tenant data to file:\033[0m"
echo -e "\033[0;37mThis command retrieves all Azure Tenant data and saves it to a file.\n\033[0m"
echo -e "> \033[0;92mazurehound list -u \"\$USERNAME\" -p \"\$PASSWORD\" -t \"\$TENANT\" -o \"mytenant.json\"\033[0m"

# Show how to get more help on commands
echo -e "\n\033[0;93mUse \"azurehound [command] --help\" for more information about a command.\033[0m"
echo -e "\033[0;37mYou can run AzureHound from anywhere in the terminal.\n\033[0m"
echo -e "\033[0;93mFor help, use: azurehound -h\033[0m"

# Keep the terminal open
exec zsh
