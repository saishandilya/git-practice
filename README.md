# git-practice

# 🧪 Git Feature Branch Workflow Using CLI

```bash
# Create a new feature branch and make a commit
git checkout -b feature/merge
echo "This is a merge feature test using cli" > merge.txt
git status
git add merge.txt
git commit -m "feat: adding new file merge.txt"
git push -u origin feature/merge

# Switch to main and merge the feature branch
git checkout main
git diff feature/merge
git merge feature/merge
git push -u origin main

# Cleanup: delete the feature branch locally and remotely
git branch -d feature/merge
git push origin --delete feature/merge
git branch
