#!/bin/zsh

# Display introductory information
echo -e "\n\033[0;92mBasicBlobFinder - Azure Blob Storage Enumerator\033[0m"
echo -e "\nBasicBlobFinder is a tool to test for the presence of Azure Blob resources."

# Execute the help command for BasicBlobFinder
echo -e "\nExecuting: \033[1;32mpython3 basicblobfinder.py \033[0m"
python3 basicblobfinder.py 2>/dev/null

# Provide general information about the tool
echo -e "\n\033[0;93mABOUT:\033[0m"
echo -e "BasicBlobFinder helps identify accessible Azure Blob storage accounts and containers by testing known or guessed names."

# Usage details
echo -e "\n\033[0;94mUSAGE:\033[0m"
echo -e "You can use BasicBlobFinder with a name list file to check for publicly accessible storage accounts and containers."

# Example 1: Basic Enumeration
echo -e "\nExample: Basic Enumeration:"
echo -e "> \033[0;92mpython3 basicblobfinder.py namelist.txt\033[0m"

# Example 2: Checking for Specific Storage Account & Container
echo -e "\nExample: Checking for Specific Storage Account & Container:"
echo -e "> \033[0;92mpython3 basicblobfinder.py falsimentis:falsimentis-container\033[0m"

# Example 3: Verbose Output
echo -e "\nExample: With Verbose Output:"
echo -e "> \033[0;92mpython3 basicblobfinder.py namelist.txt --verbose\033[0m"

# Display expected output
echo -e "\n\033[0;94mEXPECTED OUTPUT:\033[0m"
echo -e "Invalid storage account name falsi-mentis, skipping."
echo -e "Invalid storage account name fa, skipping."
echo -e "\033[0;92mValid storage account and container name: falsimentis:falsimentis-container\033[0m"
echo -e "\033[0;92mBlob data objects:\033[0m"
echo -e "\033[0;92m    https://falsimentis.blob.core.windows.net/falsimentis-container/01-Newborn-Euselachii.wav\033[0m"

# Provide reference link
echo -e "\nFor more information, visit:"
echo -e "BasicBlobFinder Documentation: \033[0;94mhttps://github.com/joswr1ght/basicblobfinder\033[0m"

# Keep the terminal open
exec zsh
