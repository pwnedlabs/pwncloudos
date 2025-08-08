#!/bin/zsh

# Display help for SeamlessPass
echo -e "Executing: \033[0;92mseamlesspass -h\033[0m"
seamlesspass -h 2>/dev/null

# Usage Examples
echo -e "\n\033[0;94m=== Usage Examples ===\033[0m"

# 1. Use base64-encoded TGT
echo -e "\n\033[0;93m[1] Use base64-encoded TGT:\033[0m"
echo -e "\033[0;37mObtain Microsoft 365 token using a Kerberos TGT:\033[0m"
echo -e "> \033[0;92mseamlesspass -tenant corp.com -domain corp.local -dc dc.corp.local -tgt <base64_TGT>\033[0m"

# 2. Use TGS cache file
echo -e "\n\033[0;93m[2] Use TGS ccache file:\033[0m"
echo -e "\033[0;37mObtain token using a TGS file:\033[0m"
echo -e "> \033[0;92mseamlesspass -tenant corp.com -tgs user_tgs.ccache\033[0m"

# 3. Use NTLM hash
echo -e "\n\033[0;93m[3] Use NTLM hash:\033[0m"
echo -e "\033[0;37mAuthenticate with a user's NTLM hash:\033[0m"
echo -e "> \033[0;92mseamlesspass -tenant corp.com -domain corp.local -dc dc.corp.local -username user -ntlm DEADBEEF... \033[0m"

# 4. Use cleartext password
echo -e "\n\033[0;93m[4] Use cleartext password:\033[0m"
echo -e "\033[0;37mAuthenticate with a username/password:\033[0m"
echo -e "> \033[0;92mseamlesspass -tenant corp.com -domain corp.local -dc 10.0.1.2 -username user -password password\033[0m"

# 5. Use AZUREADSSOACC NTLM hash
echo -e "\n\033[0;93m[5] Use AZUREADSSOACC NTLM hash:\033[0m"
echo -e "\033[0;37mObtain token with NTLM hash of AZUREADSSOACC:\033[0m"
echo -e "> \033[0;92mseamlesspass -tenant corp.com -adssoacc-ntlm DEADBEEF... -user-sid S-1-5-21-... \033[0m"

# 6. Use AZUREADSSOACC AES key
echo -e "\n\033[0;93m[6] Use AZUREADSSOACC AES key:\033[0m"
echo -e "\033[0;37mObtain token with AES key of AZUREADSSOACC:\033[0m"
echo -e "> \033[0;92mseamlesspass -tenant corp.com -adssoacc-aes DEADBEEF... -domain-sid S-1-5-21-... -user-rid 1234\033[0m"

# Reference links
echo -e "\n\033[0;94mDocumentation:\033[0m"
echo -e "GitHub: \033[0;92mhttps://github.com/Malcrove/SeamlessPass\033[0m"
echo -e "Blog:   \033[0;92mhttps://malcrove.com/seamlesspass-leveraging-kerberos-tickets-to-access-the-cloud/\033[0m"

# Keep the terminal open
exec zsh
