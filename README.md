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

## 🔁 Git Reset Commits Practice Using CLI

The \`reset\` command is used to undo commits in the branch to reset to previous or different commit if accidentally commited.

### 🔸 Soft Reset

Undoes the last commit but **keeps all changes staged** (**staging area**) — it's as if you’ve already run git add, but haven’t committed yet.

```bash
git reset --soft HEAD~1
```

> Note: Removes the last commit, all file changes remain in staging area - ready to commit. 

> Use case: You want to revise the last commit message or combine commits.

### 🔸 Mixed Reset (Default)

Undoes the last commit and moves changes to **unstages** (keeps them in working directory) just like before adding.

```bash
git reset --mixed HEAD~1
```

> Note: Removes the last commit, all file changes remain in working directory - ready to add. 

> Use case: You want to undo a commit and reselect which files to stage.

### 🔸 Hard Reset

Completely undoes the last commit and **discards all uncommitted changes** like before even making changes to the file.

```bash
git reset --hard HEAD~1
```

> Note: Removes the last commit, discards all uncommitted changes — files are reset to that previous commit state.

> Use case: Use with caution. Ideal when you want to wipe changes completely and go back to a clean state.

### 🔍 Extra Tip: Use Commit ID

Use \`git log --oneline\` to get commit IDs and reset to a specific one:

```bash
git reset --hard <commit-id>
```