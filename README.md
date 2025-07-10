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
```

# ⚔️ Git Merge Conflict Practice Using CLI

```bash
# Create a feature branch and make a conflicting change
git checkout -b feature/merge-conflict
make changes to existing conflict.txt file
git add conflict.txt
git commit -m "feat: feature branch changes"
git push -u origin feature/merge-conflict

# Switch to main branch and make another change to the same file
git checkout main
git status
git add conflict.txt
git commit -m "feat: update main branch"

# Check difference and attempt merge
git diff feature/merge-conflict
git merge feature/merge-conflict   # This triggers a conflict

# Resolve the conflict manually in the file, then:
git add .
git commit -m "updated merge conflict to main"
git push -u origin main

# Cleanup: delete feature branch locally and remotely
git branch
git branch -d feature/merge-conflict
git push origin --delete feature/merge-conflict
```