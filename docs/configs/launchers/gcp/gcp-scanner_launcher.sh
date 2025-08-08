#!/bin/zsh

# Execute the help command for gcp_scanner
echo -e "\nExecuting: \033[0;92mpython3 scanner.py --help\033[0m"
python3 scanner.py --help 2>/dev/null

# Provide example usage
echo -e "\n\033[0;94mExamples:\033[0m"

# Basic Light Scan with metadata
echo -e "\n\033[0;93mLight scan using metadata:\033[0m"
echo -e "\033[0;97mTo quickly enumerate resources using GCE instance metadata:\n\033[0m"
echo -e "> \033[0;92mpython3 scanner.py -m -o output_dir -ls\033[0m"

# Scan with service account keys
echo -e "\n\033[0;93mScan with service account keys:\033[0m"
echo -e "\033[0;97mTo scan using SA key(s) from a folder:\n\033[0m"
echo -e "> \033[0;92mpython3 scanner.py -k /path/to/key/folder -o output_dir\033[0m"

# Scan using gcloud profile
echo -e "\n\033[0;93mScan using gcloud profile:\033[0m"
echo -e "\033[0;97mTo scan using stored gcloud credentials:\n\033[0m"
echo -e "> \033[0;92mpython3 scanner.py -g - -o output_dir\033[0m"

# Scan with access or refresh tokens
echo -e "\n\033[0;93mScan with token files:\033[0m"
echo -e "\033[0;97mUsing OAuth2 access token JSON:\n\033[0m"
echo -e "> \033[0;92mpython3 scanner.py -at token.json -o output_dir\033[0m"
echo -e "\033[0;97mOr with OAuth2 refresh token JSON:\n\033[0m"
echo -e "> \033[0;92mpython3 scanner.py -rt refresh.json -o output_dir\033[0m"

# Force specific project scan
echo -e "\n\033[0;93mForce specific projects:\033[0m"
echo -e "\033[0;97mIf project listing is restricted, supply names directly:\n\033[0m"
echo -e "> \033[0;92mpython3 scanner.py -k keys/ -f proj1,proj2 -o output_dir\033[0m"

# Logging options
echo -e "\n\033[0;93mLogging:\033[0m"
echo -e "\033[0;97mTo save logs to a file with DEBUG level:\n\033[0m"
echo -e "> \033[0;92mpython3 scanner.py -k keys/ -o out/ -l DEBUG -lf scan.log\033[0m"

# Visualizing results
echo -e "\n\033[0;93mVisualize scan results:\033[0m"
echo -e "\033[0;97mUse the provided web visualizer to explore JSON results:\n\033[0m"
echo -e "> \033[0;92mpython3 visualization_tool/gcp-scanner-visualizer -p 8080\033[0m"

# Provide the reference link
echo -e "\nFor more information, visit: \033[0;94mhttps://github.com/google/gcp_scanner\033[0m"

# Keep the terminal open
exec zsh
