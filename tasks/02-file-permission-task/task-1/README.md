# 2. File Permission Task

## Task 1: Instructions

**Step 1:** Create a file with ***".txt"*** extension.

```bash
# create "demo.txt" file
touch demo.txt

# list all files
ls -lah
```

![Result 1](./result-1.png)

**Step 2:** Change the permission set of that file, so that any ***user*** can **"read"** it, ***group*** can **"read/write"** & ***owner*** can **"read/write/execute"** it.

```bash
# change permission set the file
chmod 764 demo.txt

# list files to ensure permission set
ls -l
```

![Result 2](./result-2.png)
