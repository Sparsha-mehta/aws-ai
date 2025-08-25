#!/bin/bash

set -e  # Exit if any command fails

WORKING_BRANCH="aws-ai-mdbook"
DEPLOY_BRANCH="mdbook-deploy"

# CHANGE 1: Force temp operations outside of iCloud Drive
export TMPDIR=/tmp

echo "📦 Building the mdBook site..."
mdbook build

echo "🗂️  Preparing temporary deployment folder outside iCloud..."
DEPLOY_TMP="/tmp/deploy-tmp-$$"  # $$ gives unique process ID
rm -rf "$DEPLOY_TMP"
mkdir -p "$DEPLOY_TMP"
cp -r book/* "$DEPLOY_TMP"

echo "🔀 Switching to deployment branch: $DEPLOY_BRANCH"
if git show-ref --verify --quiet refs/heads/$DEPLOY_BRANCH; then
    git checkout $DEPLOY_BRANCH
    sleep 2
else
    git checkout --orphan $DEPLOY_BRANCH
    sleep 2
fi

echo "🧹 Cleaning old files..."
git rm -rf . > /dev/null 2>&1 || true

echo "📂 Copying built files to root of $DEPLOY_BRANCH..."
cp -r "$DEPLOY_TMP"/* .
rm -rf "$DEPLOY_TMP"
touch .nojekyll

echo "✅ Committing and pushing to $DEPLOY_BRANCH..."
git add .
git commit -m "Deploy mdBook site with .nojekyll to $DEPLOY_BRANCH" || echo "Nothing to commit"
git push origin $DEPLOY_BRANCH --force

echo "🔁 Switching back to your working branch: $WORKING_BRANCH"
git checkout $WORKING_BRANCH
sleep 2

echo "🚀 Deployment complete! Ask Sparsha to enable GitHub Pages from the '$DEPLOY_BRANCH' branch."
