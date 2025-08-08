#!/bin/zsh

# Execute the help section
echo -e "\nExecuting: \033[0;92mpython3 main.py <iam-policy-bindings.json>\033[0m"

# Tool Description
echo -e "\n\033[0;94mUsage:\033[0m"
echo -e "\033[0;97mPython script to create a visualization of GCP Project IAM policy bindings.\033[0m"
echo -e "\n\033[0;97mRequired:\033[0m"
echo -e "* IAM policy JSON file exported from GCP using gcloud CLI."

# Flags and Parameters
echo -e "\n\033[0;94mFlags:\033[0m"
echo -e "  \033[0;97m<iam-policy-bindings.json>\033[0m   IAM policy file in JSON format"

# Examples
echo -e "\n\033[0;94mExamples:\033[0m"

# Step 1: Export IAM Policy
echo -e "\n\033[0;93mStep 1: Export IAM Policy Bindings\033[0m"
echo -e "\033[0;97mUse gcloud to extract IAM policy bindings and save to JSON:\n\033[0m"
echo -e "> \033[0;92mgcloud projects get-iam-policy <PROJECT_ID> --format json > iam-policy-bindings.json\033[0m"

# Step 2: Run Visualizer
echo -e "\n\033[0;93mStep 2: Generate Visualization\033[0m"
echo -e "\033[0;97mRun the script with the generated JSON file:\n\033[0m"
echo -e "> \033[0;92mpython3 main.py iam-policy-bindings.json\033[0m"

# Output
echo -e "\n\033[0;94mOutput:\033[0m"
echo -e "\033[0;97mThis will open a visualization in your browser displaying role bindings and members in a graphical format.\033[0m"

# PNG Image Note
echo -e "\n\033[0;94mScreenshot:\033[0m"
echo -e "\033[0;97mYou can preview an example output in:\033[0m"
echo -e "> \033[0;92miam_policy_visualize.png\033[0m"

# Reference
echo -e "\nFor more information, visit: \033[0;94mhttps://github.com/hac01/iam-policy-visualize\033[0m"

# Keep the terminal open
exec zsh
