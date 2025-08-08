#!/bin/zsh

# Display introductory information
echo -e "\n\033[0;92mExfil_Exchange_Mail - Extract Emails via MSGraph API\033[0m"
echo -e "\nThis tool extracts emails from Exchange Online using Microsoft Graph API."

# Execute the help command for Exfil_Exchange_Mail
echo -e "\nExecuting: \033[1;32mpython3 exfil_exchange_mail.py -h\033[0m"
python3 exfil_exchange_mail.py -h 2>/dev/null

# Display authentication error example
echo -e "\n\033[0;93mError retrieving emails:\033[0m"
echo -e "\033[0;37m{\"error\":{\"code\":\"InvalidAuthenticationToken\",\"message\":\"IDX14100: JWT is not well formed, there are no dots (.).\nThe token needs to be in JWS or JWE Compact Serialization Format. (JWS): 'EncodedHeader.EncodedPayload.EncodedSignature'. (JWE): 'EncodedProtectedHeader.EncodedEncryptedKey.EncodedInitializationVector.EncodedCiphertext.EncodedAuthenticationTag'.\",\"innerError\":{\"date\":\"2025-02-05T09:28:11\",\"request-id\":\"0bc4bd2c-cd61-4cde-8bed-8edb0a590294\",\"client-request-id\":\"0bc4bd2c-cd61-4cde-8bed-8edb0a590294\"}}}\033[0m"

# Provide example usage
echo -e "\n\033[0;93mExamples:\033[0m"

# Obtaining MSGraph Access Token
echo -e "\n\033[0;94mObtaining MSGraph Access Token:\033[0m"
echo -e "Follow these steps to add your MSGraph Access Token to the script."

echo -e "\n1. Obtain your MSGraph Access Token (e.g., from PowerShell):"
echo -e "> \033[0;92m\$MSGraphToken.access_token\033[0m"

# Editing the script to add token
echo -e "\n2. Open the script and replace '<your token here>' with your token."
echo -e "> \033[0;92mnano exfil_exchange_mail.py\033[0m"
echo -e "> \033[0;92mtoken = 'your_actual_token_here'\033[0m"

# Running the script
echo -e "\n\033[0;94mRunning the script:\033[0m"
echo -e "After adding the token, execute the script to exfiltrate emails."

echo -e "\n> \033[0;92mpython3 exfil_exchange_mail.py\033[0m"

# Provide the reference link
echo -e "\nFor more information, visit:"
echo -e "Exfil_Exchange_Mail Documentation: \033[0;94mhttps://github.com/rootsecdev/Azure-Red-Team/tree/master/Tokens\033[0m"

# Keep the terminal open
exec zsh
