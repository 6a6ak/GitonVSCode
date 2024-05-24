#!/bin/bash

# Prompt for GitHub username
read -p "Enter your GitHub username: " github_username

# Prompt for GitHub email
read -p "Enter your GitHub email: " github_email

# Configure Git with the provided username and email
git config --global user.name "$github_username"
git config --global user.email "$github_email"

# Optional: Clone a repository
read -p "Do you want to clone a repository? (y/n): " clone_repo

if [[ $clone_repo == "y" || $clone_repo == "Y" ]]; then
    read -p "Enter the repository URL: " repo_url
    git clone "$repo_url"
fi

# Open VSCode
if command -v code &> /dev/null; then
    code .
else
    echo "VSCode is not installed or not found in PATH"
fi

echo "GitHub user added and repository cloned (if chosen)."
