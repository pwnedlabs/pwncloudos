#!/bin/zsh

# Execute the help command for pmapper
echo -e "\nExecuting: \033[1;32mpmapper -h\033[0m"
pmapper -h 2>/dev/null

# Display the tool name
echo -e "\n\033[0;92mPrincipal Mapper (pmapper)\033[0m"
echo -e "\nPrincipal Mapper (pmapper) is a tool to analyze AWS IAM permissions and relationships."

# Provide general information about the tool
echo -e "\n\033[0;93mABOUT:\033[0m"
echo -e "pmapper helps you understand IAM permissions and how principals (users, roles) can interact with AWS resources. It allows querying effective permissions, privilege escalation paths, and visualizing access relationships."

# Usage details
echo -e "\n\033[0;94mUSAGE:\033[0m"
echo -e "You can use pmapper to create a graph of IAM relationships, analyze permissions, and visualize access control within an AWS account."

# Example 1: Create a graph for an AWS account
echo -e "\nExample: Create a graph for an AWS account:"
echo -e "> \033[0;92mpmapper --profile skywalker graph create\033[0m"

# Example 2: Query permissions for an action
echo -e "\nExample: Query who can perform an action:"
echo -e "> \033[0;92mpmapper --profile skywalker query 'who can do iam:CreateUser'\033[0m"

# Example 3: Query actions with conditions
echo -e "\nExample: Query actions with conditions:"
echo -e "> \033[0;92mpmapper --account 000000000000 argquery -s --action 'ec2:RunInstances' --condition 'ec2:InstanceType=c6gd.16xlarge'\033[0m"

# Example 4: Identify privilege escalation paths
echo -e "\nExample: Identify privilege escalation paths:"
echo -e "> \033[0;92mpmapper --account 000000000000 query -s 'preset privesc *'\033[0m"

# Example 5: Generate an IAM relationship visualization
echo -e "\nExample: Generate an IAM relationship visualization:"
echo -e "> \033[0;92mpmapper --account 000000000000 visualize --filetype svg\033[0m"

# Provide reference link for more information
echo -e "\nFor more information, visit:"
echo -e "Principal Mapper Documentation: \033[0;94mhttps://github.com/nccgroup/PMapper\033[0m"

# Keep the terminal open
exec zsh
