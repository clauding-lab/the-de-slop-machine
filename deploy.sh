#!/bin/bash
# ─── De-Slop Machine: GitHub Pages Deployment ───
# Run this from your terminal after downloading the files.

REPO_NAME="de-slop-machine"
GITHUB_USER="clauding-lab"

echo "=== De-Slop Machine Deployment ==="
echo ""

# Step 1: Create repo on GitHub
echo "[1/5] Creating GitHub repo..."
gh repo create "$GITHUB_USER/$REPO_NAME" --public --description "AI writing pattern detector and Claude-powered humanizer rewrite tool" 2>/dev/null || echo "Repo may already exist, continuing..."

# Step 2: Init local repo
echo "[2/5] Initializing local repo..."
cd ~/Downloads  # or wherever you saved the files
mkdir -p "$REPO_NAME"
cp index.html "$REPO_NAME/" 2>/dev/null
cp README.md "$REPO_NAME/" 2>/dev/null
cd "$REPO_NAME"
git init
git remote add origin "https://github.com/$GITHUB_USER/$REPO_NAME.git" 2>/dev/null || git remote set-url origin "https://github.com/$GITHUB_USER/$REPO_NAME.git"

# Step 3: Commit
echo "[3/5] Committing files..."
git add -A
git commit -m "Initial commit: De-Slop Machine v1.0"

# Step 4: Push
echo "[4/5] Pushing to GitHub..."
git branch -M main
git push -u origin main

# Step 5: Enable GitHub Pages
echo "[5/5] Enabling GitHub Pages..."
gh api -X PUT "repos/$GITHUB_USER/$REPO_NAME/pages" \
  -f source='{"branch":"main","path":"/"}' \
  --silent 2>/dev/null || echo "Pages may need manual activation (Settings > Pages > Source: main branch)"

echo ""
echo "=== Done! ==="
echo "Your site will be live at: https://$GITHUB_USER.github.io/$REPO_NAME/"
echo "(May take 1-2 minutes to propagate)"
