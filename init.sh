#!/bin/sh

# Prompt user for confirmation before deleting .git
read -p "Are you sure you want to delete the .git? (y/N): " confirm
case "$confirm" in
    [yY][eE][sS]|[yY])
    ;;
  *)
    echo "Operation aborted."
    exit 1
    ;;
esac

# Remove .git directory
rm -rf .git

# Check if .git removal was successful
if [ -d ".git" ]; then
    echo "Error: Failed to remove .git directory."
    exit 1
fi