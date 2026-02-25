# GitHub Commands

This file contains the Git commands used when creating and publishing the `yamen` branch for this repository.

Commands (copy & paste into a terminal):

```bash
# create and switch to a new local branch named 'yamen'
git checkout -b yamen

# switch to the 'yamen' branch (if already created)
git checkout yamen

# show the current branch name
git branch --show-current

# show remote URLs (verify 'origin')
git remote -v

# push the local 'yamen' branch to origin and set upstream
git push -u origin yamen

# list remote heads to confirm the branch exists on origin
git ls-remote --heads origin
```

Notes:
- After `git push -u origin yamen`, GitHub printed a suggested PR URL which looks like:
  https://github.com/Yamenxy/movies_app/pull/new/yamen

Use these commands in the repository root (where `.git` is located).

Collaboration & team commands
-----------------------------

- Clone the repository (for new teammates):
  ```bash
  git clone https://github.com/Yamenxy/movies_app.git
  ```
- Create a feature branch from `main` or `dev`:
  ```bash
  git checkout main
  git pull origin main
  git checkout -b feature/my-feature
  ```
- List branches (local and remote):
  ```bash
  git branch        # local
  git branch -r     # remote
  git branch -a     # all
  ```
- Fetch latest remote refs without merging:
  ```bash
  git fetch origin
  ```
- Update local branch with remote changes (merge):
  ```bash
  git pull origin main
  ```
- Update local branch by rebasing onto remote (cleaner history):
  ```bash
  git fetch origin
  git rebase origin/main
  ```
- Push a new branch and set upstream:
  ```bash
  git push -u origin feature/my-feature
  ```
- Push later updates:
  ```bash
  git add .
  git commit -m "Describe changes"
  git push
  ```

Handling conflicts & sync tips
----------------------------

- If you hit conflicts during pull/rebase, resolve files, then:
  ```bash
  git add <resolved-files>
  git rebase --continue   # if rebasing
  git commit              # if merge commit required
  ```
- If you want to abort a rebase or merge in progress:
  ```bash
  git rebase --abort
  git merge --abort
  ```
- Stash local work when switching branches:
  ```bash
  git stash push -m "WIP: short note"
  git stash pop   # restore
  ```

Code review & pull request workflow
----------------------------------

- Create a PR from `feature/my-feature` into `main` (GitHub suggested URL shown on push):
  https://github.com/Yamenxy/movies_app/pull/new/feature/my-feature
- To update PR with new commits, just push to the same branch:
  ```bash
  git push
  ```
- Squash commits locally before pushing (optional):
  ```bash
  git rebase -i origin/main
  ```

Useful Git troubleshooting
--------------------------

- Show commit history (compact):
  ```bash
  git log --oneline --graph --decorate --all
  ```
- Show what changed since last commit:
  ```bash
  git status
  git diff  # unstaged
  git diff --staged  # staged
  ```
- Restore a file from last commit:
  ```bash
  git checkout -- path/to/file
  ```

Flutter & Dart commands for this project
---------------------------------------

- Install dependencies:
  ```bash
  flutter pub get
  ```
- Run the app (select device or emulator):
  ```bash
  flutter run
  ```
- Run with a specific device id:
  ```bash
  flutter devices
  flutter run -d <device-id>
  ```
- Build release APK (Android):
  ```bash
  flutter build apk --release
  ```
- Build for iOS (macOS required):
  ```bash
  flutter build ios --release
  ```
- Run tests:
  ```bash
  flutter test
  ```
- Analyze code:
  ```bash
  flutter analyze
  ```
- Format code:
  ```bash
  dart format .
  ```

Team tips and recommended flow (team of 4)
-----------------------------------------

- Keep `main` or `dev` branch stable; create short-lived feature branches.
- Pull/rebase frequently to minimize conflicts.
- Open PRs with clear description and link to any issue or ticket.
- Use reviewer assignments and address comments with additional commits.

Git config & handy aliases
--------------------------

- Configure user (one-time):
  ```bash
  git config --global user.name "Your Name"
  git config --global user.email you@example.com
  ```
- Useful aliases (add to global config):
  ```bash
  git config --global alias.st status
  git config --global alias.co checkout
  git config --global alias.br branch
  git config --global alias.lg "log --oneline --graph --decorate"
  ```
