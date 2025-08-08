#!/bin/zsh

# ========================================
# Google Workspace Enumeration Launcher
# ========================================

# Print header info
echo -e "\nExecuting: \033[0;92mpython3 gws_enum.py\033[0m"
echo -e "\nUsage: This tool enumerates Google Workspace data using OAuth2 login and saves artifacts in the loot/ folder."

# Features
echo -e "\n\033[0;94mFeatures:\033[0m"
echo -e "\033[0;97m* OAuth2 authorization with multiple scopes"
echo "* Extracts from Drive, Gmail, Contacts, Calendar, Tasks, and GCP Projects"
echo "* Outputs saved in structured loot/ directory\033[0m"

# Setup
echo -e "\n\033[0;94mSetup:\033[0m"
echo -e "\033[0;93m1.\033[0;97m Enable the required APIs in your Google Cloud Console:\033[0m"
echo -e "   \033[0;94mhttps://console.cloud.google.com/apis/library\033[0m"
echo -e "   Browse and enable the following APIs:"
echo -e "   - Drive API"
echo -e "   - Gmail API"
echo -e "   - People API"
echo -e "   - Calendar API"
echo -e "   - Tasks API"
echo -e "   - Keep API"
echo -e "   - Cloud Resource Manager API"

echo -e "\033[0;93m2.\033[0;97m Go to Credentials Page to create OAuth credentials:\033[0m"
echo -e "   \033[0;94mhttps://console.cloud.google.com/apis/credentials\033[0m"
echo -e "   - Create OAuth Client ID (Desktop App)"
echo -e "   - Download \033[0;92mclient_secrets.json\033[0m"

echo -e "\033[0;93m3.\033[0;97m Place \033[0;92mclient_secrets.json\033[0m in the same directory as \033[0;92mgws_enum.py\033[0m"

# Usage Examples
echo -e "\n\033[0;94mExamples:\033[0m"

echo -e "\n\033[0;93mBasic Enumeration:\033[0m"
echo -e "\033[0;97mLaunch the tool, log in via browser, and enumerate all Google Workspace data:\033[0m"
echo -e "> \033[0;92mpython3 gws_enum.py\033[0m"

# Output Files
echo -e "\n\033[0;93mOutput Artifacts:\033[0m"
echo -e "\033[0;97mAfter running, data will be saved to these folders:\033[0m"
echo -e "   - \033[0;92mloot/drive/\033[0m → Downloaded Google Docs & Slides"
echo -e "   - \033[0;92mloot/gsheet/\033[0m → Exported Google Sheets (CSV)"
echo -e "   - \033[0;92mloot/gmail/\033[0m → Email snippets and .eml files"
echo -e "   - \033[0;92mloot/contacts/\033[0m → Contacts with display names"
echo -e "   - \033[0;92mloot/keep/\033[0m → Google Keep JSON dump"

# Reference
echo -e "\nFor more information, visit: \033[0;94mhttps://github.com/pwnedlabs/google-workspace-enum\033[0m"

# Keep terminal open
exec zsh
