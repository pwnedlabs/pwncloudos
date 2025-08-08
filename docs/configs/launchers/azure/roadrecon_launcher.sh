#!/bin/zsh

# Execute the help command for roadrecon
echo -e "\nExecuting: \033[0;92mroadrecon -h\033[0m"
roadrecon -h 2>/dev/null

# Authentication Methods Section
echo -e "\n\033[0;94mAuthentication Methods for roadrecon\033[0m"

# Username and Password Authentication
echo -e "\n\033[0;93mUsername and Password Authentication:\033[0m"
echo -e "\033[0;37mThe simplest form of authentication is with only a username and password. To use this, supply both the username and password on the command line.\n\033[0m"
echo -e "> \033[0;92mroadrecon auth -u user@mytenant.onmicrosoft.com -p Passwordhere\033[0m"
echo -e "\n\033[0;94mNote:\033[0m This method uses legacy password authentication and will not work if Multi-Factor Authentication (MFA) is required."

# Device Code Flow
echo -e "\n\033[0;93mDevice Code Flow:\033[0m"
echo -e "\033[0;37mThe Device Code flow provides a code to use on the Microsoft login page to sign in interactively. This method prompts for MFA if applicable.\n\033[0m"
echo -e "> \033[0;92mroadrecon auth --device-code\033[0m"
echo -e "\nYou will be prompted with a code to open the page \033[0;94mhttps://microsoft.com/devicelogin\033[0m and enter the provided code to authenticate."
echo -e "\nAfter you successfully log in, the authentication flow in the app is complete."

# Using a PRT Cookie
echo -e "\n\033[0;93mUsing a PRT Cookie:\033[0m"
echo -e "\033[0;37mIf the device is Azure AD joined/registered or Hybrid joined, you can use Single Sign-On (SSO) to authenticate.\n\033[0m"
echo -e "\nFirst, initialize the SSO flow with the following command to get a nonce:"
echo -e "> \033[0;92mroadrecon auth --prt-init\033[0m"
echo -e "\nThis will provide a nonce like the following:"
echo -e "> \033[0;94mAQABAAAAAAB2UyzwtQEKR7-rWbgdcBZIJ3LUNT8vP0ZW8dI8AB3zTVy1r1rTFR35qK3ds4Kfcv7FQFMTcHiL6cSofh1eODwInaebcwNsnrrQQr8n-xCFaSAA\033[0m"
echo -e "\nYou can then use this nonce with ROADtoken to request a PRT cookie. Once you have the cookie, you can complete the sign-in with the following command:"
echo -e "> \033[0;92mroadrecon auth --prt-cookie COOKIE_FROM_ROADTOKEN_GOES_HERE\033[0m"

# Provide the reference link for more information
echo -e "\nFor more information, visit: \033[0;94mhttps://github.com/dirkjanm/ROADtools\033[0m"

# Keep the terminal open
exec zsh
