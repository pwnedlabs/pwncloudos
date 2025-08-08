#!/bin/zsh

# Execute the help command for IAMGraph
echo -e "\nExecuting: \033[1;32miamgraph --help\033[0m"
iamgraph --help 2>/dev/null

# Display the usage instructions
echo -e "\n\033[0;92mIAMGraph Tool\033[0m"
echo -e "\nIAMGraph helps you model and analyze IAM configurations of target accounts using a graph database."

# Provide general information about the tool
echo -e "\n\033[0;93mABOUT:\033[0m"
echo -e "IAMGraph is a tool for modeling and analyzing IAM configurations of target AWS accounts using a graph database. It helps visualize and analyze the relationships between IAM roles, policies, and permissions."

# Usage details
echo -e "\n\033[0;94mUSAGE:\033[0m"
echo -e "You can use IAMGraph to set up a database connection, model IAM configurations, analyze the graph, and run both operations together."

echo -e "\nExample: Database Connection Setup:"
echo -e "> \033[0;92miamgraph -du bolt://localhost:7687 -u neo4j_user\033[0m"

echo -e "\nExample: Model IAM Configurations:"
echo -e "> \033[0;92miamgraph model -du bolt://localhost:7687 -u neo4j_user\033[0m"

echo -e "\nExample: Analyze the Graph:"
echo -e "> \033[0;92miamgraph analyse -du bolt://localhost:7687 -u neo4j_user\033[0m"

echo -e "\nExample: Run Both Model and Analyze:"
echo -e "> \033[0;92miamgraph run -du bolt://localhost:7687 -u neo4j_user\033[0m"

echo -e "\nExample: Enable Verbosity:"
echo -e "> \033[0;92miamgraph model -v -du bolt://localhost:7687 -u neo4j_user\033[0m"

# Provide reference link for more information
echo -e "\nFor more information, visit:"
echo -e "IAMGraph Documentation: \033[0;94mhttps://github.com/WithSecureLabs/IAMGraph\033[0m"

# Keep the terminal open
exec zsh
