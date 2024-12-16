# 5. VCS Task

## Task 1: Instructions

**Step 1:** Create a new directory. Populate it with script files.

```bash
# Create Directory
mkdir devops-vcs-task

# List all files and directories
ls -lah
```

![Result 1.1](./screenshots/result-1.1.png)

```bash
# Get into the newly created directory
cd devops-vcs-task

# Create new script files
for i in {1..5}; do 
  touch "script_$(printf "%02d" $i).sh"; 
done

# List all files
ls -lah
```

![Result 1.2](./screenshots/result-1.2.png)

**Step 2:** Initiate an empty repository on GitHub.

- Goto [GitHub](https://github.com) Website.

- Click ***"New"*** to create new repository.
  
  ![Result 2.1](./screenshots/result-2.1.png)

- Give a name for the repository.

  ![Result 2.2](./screenshots/result-2.2.png)

- Click on ***"Create repository"*** button to create the repository.

  ![Result 2.3](./screenshots/result-2.3.png)

- Finally the repository has been created successfully.

  ![Result 2.4](./screenshots/result-2.4.png)

**Step 3:** Convert the local directory into a Git repository and link it to GitHub for pushing the code into the repository.

- Follow the following commands to convert the local repository into git repository

  ![Result 3.1](./screenshots/result-3.1.png)

  ```bash
  echo "# devops-vcs-task" >> README.md

  git init

  git add README.md

  git commit -m "first commit"

  git branch -M main

  git remote add origin https://github.com/christine-robinson/devops-vcs-task.git

  git push -u origin main
  ```

  ![Result 3.2](./screenshots/result-3.2.png)

- Published ***"first commit"***

  ![Result 3.3](./screenshots/result-3.3.png)

**Step 4:** Perform merge, rebase, stash commands in that git repository.

> ***Note :*** To perform merge we need one more branch.

```bash
# Create a new branch from "main" branch and switch to it.
git checkout -b scripts

# Print current branch
git branch

git status
```

![Result 4.1](./screenshots/result-4.1.png)

```bash
# Make a new commit
git add .

git commit -m "script files added"

# Publish new branch "scripts"
git push --set-upstream origin scripts
```

![Result 4.2](./screenshots/result-4.2.png)

![Result 4.3](./screenshots/result-4.3.png)

```bash
# Switch to "main" branch
git checkout main

# Print current branch
git branch

# Perform merge
git merge scripts

# Print git commit logs to verify merge
git log

# Publish the merge commit
git push
```

![Result 4.4](./screenshots/result-4.4.png)

![Result 4.5](./screenshots/result-4.5.png)

![Result 4.6](./screenshots/result-4.6.png)

```bash
# Print current branch
git branch

# Create new script
touch script_06.sh

git status
```

![Result 4.7](./screenshots/result-4.7.png)

```bash
# Make a new commit
git add script_06.sh

git commit -m "script 6 added"

git push
```

![Result 4.8](./screenshots/result-4.8.png)
![Result 4.9](./screenshots/result-4.9.png)

```bash
# Switch to "scripts" branch
git checkout scripts

# Perform rebase
git rebase main

# Print git commit logs to verify rebase
git log

# Publish the rebase commit
git push
```

![Result 4.10](./screenshots/result-4.10.png)

![Result 4.11](./screenshots/result-4.11.png)

```bash
# Print current branch
git branch

# Create new script
touch script_07.sh

git status

git add script_07.sh

# Perform stash
git stash
```

![Result 4.12](./screenshots/result-4.12.png)

```bash
# Switch to "main" branch
git checkout main

git stash list

git stash apply

git stash drop

git status
```

![Result 4.13](./screenshots/result-4.13.png)

```bash
# Make a new commit
git commit -m "script 7 added"

git push
```

![Result 4.14](./screenshots/result-4.14.png)

![Result 4.15](./screenshots/result-4.15.png)
