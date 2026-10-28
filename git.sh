#!/bin/bash

# Stage all changes
git add .

# Ask for commit message
read -p "Enter commit message: " message

# Commit changes
git commit -m "$message"

# Ask whether to push
read -p "Do you want to push to the remote repository? (y/N): " push

if [[ "$push" =~ ^[Yy]$ ]]; then
    git push
    echo "Changes pushed successfully."
else
    echo "Push skipped."
fi
