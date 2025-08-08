#!/bin/zsh

# Execute the help command for AzSubEnum
echo -e "\nExecuting: \033[1;32mpython3 azsubenum.py -h\033[0m"
python3 azsubenum.py -h 2>/dev/null

# Display tool name
echo -e "\n\033[0;92mAzSubEnum - Azure Subscription Enumerator\033[0m"
echo -e "\nAzSubEnum is a tool to enumerate Azure subscriptions, tenants, and resources."

# Provide general information about the tool
echo -e "\n\033[0;93mABOUT:\033[0m"
echo -e "AzSubEnum helps identify valid Azure subscriptions and resources by performing enumeration using different techniques such as brute force and wordlist permutations."

# Usage details
echo -e "\n\033[0;94mUSAGE:\033[0m"
echo -e "You can use AzSubEnum to perform basic enumeration, use custom wordlists, and enable verbose output."

# Example 1: Basic Enumeration
echo -e "\nExample: Basic Enumeration:"
echo -e "> \033[0;92mpython3 azsubenum.py -b megabigtech --thread 10\033[0m"

# Example 2: Using Permutation Wordlists
echo -e "\nExample: Using Permutation Wordlists:"
echo -e "> \033[0;92mpython3 azsubenum.py -b megabigtech --thread 10 --permutation permutations.txt\033[0m"

# Example 3: With Verbose Output
echo -e "\nExample: With Verbose Output:"
echo -e "> \033[0;92mpython3 azsubenum.py -b megabigtech --thread 10 --permutation permutations.txt --verbose\033[0m"

# Provide reference link
echo -e "\nFor more information, visit:"
echo -e "AzSubEnum Documentation: \033[0;94mhttps://github.com/someone/AzSubEnum\033[0m"

# Keep the terminal open
exec zsh
