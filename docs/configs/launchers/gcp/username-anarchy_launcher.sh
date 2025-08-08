#!/bin/zsh

# Execute the help command for username-anarchy
echo -e "\nExecuting: \033[0;92m./username-anarchy -h\033[0m"
./username-anarchy -h 2>/dev/null

# Provide example usage
echo -e "\n\033[0;94mExamples:\033[0m"

# Basic example - known full name
echo -e "\n\033[0;93mYou know the name of a user but not the username format:\033[0m"
echo -e "\033[0;97mTry providing the full name directly:\n\033[0m"
echo -e "> \033[0;92m./username-anarchy anna key\033[0m"

# Known format and file input
echo -e "\n\033[0;93mYou know the username format and names of users:\033[0m"
echo -e "\033[0;97mUsing an input file and selecting the format:\n\033[0m"
echo -e "> \033[0;92m./username-anarchy --input-file ./test-names.txt --select-format first.last\033[0m"

# Country-based automatic generation
echo -e "\n\033[0;93mYou know the server is in France:\033[0m"
echo -e "\033[0;97mUse the country dataset with auto generation:\n\033[0m"
echo -e "> \033[0;92m./username-anarchy --country france --auto\033[0m"

# Listing format plugins
echo -e "\n\033[0;93mList username format plugins:\033[0m"
echo -e "> \033[0;92m./username-anarchy --list-formats\033[0m"

# Recognising format
echo -e "\n\033[0;93mAutomatically recognise the username format in use:\033[0m"
echo -e "> \033[0;92m./username-anarchy --recognise j.smith\033[0m"

# Custom plugin usage
echo -e "\n\033[0;93mDefine a custom plugin with -F:\033[0m"
echo -e "> \033[0;92m./username-anarchy -F \"v-%f%l\" andrew horton\033[0m"

# File input examples
echo -e "\n\033[0;93mFile input examples:\033[0m"
echo -e "\033[0;97mYou can use CSV, space or tab-delimited formats.\033[0m"

# Provide the reference link
echo -e "\nFor more information, visit: \033[0;94mhttps://github.com/urbanadventurer/username-anarchy\033[0m"

# Keep the terminal open
exec zsh
