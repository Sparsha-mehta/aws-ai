#!/bin/bash

set -e  # Exit immediately if a command fails

# Step 1: Build the mdBook site
mdbook build

# Step 2: Create a temporary directory to store the built book
mkdir -p deploy-tmp
cp -r book/* deploy-tmp

# Step 3: Create or reset the deployment branch
git checkout --orphan mdbook-deploy

# Step 4: Remove all tracked files (from this orphan branch)
git rm -rf . > /dev/null 2>&1

# Step 5: Copy the book contents into the root of this branch
cp -r deploy-tmp/* .
rm -rf deploy-tmp

# Step 6: Commit and push to the mdbook-deploy branch
git add .
git commit -m "Deploy mdBook site to mdbook-deploy branch"
git push origin mdbook-deploy --force

# Step 7: Return to your working branch (update this if your branch is named differently)
git checkout aws-ai-mdbook

echo "✅ Deployment complete. Ask Sparsha to enable GitHub Pages from the 'mdbook-deploy' branch."
