# 4. Scripting Task

## Task 2: Instructions

**Step 1:** Print the given file.

```bash
cat demo.txt
```

![Result 1]()

**Step 2:** Replace all occurrence of the word ***"give"*** with ***"learning"*** from 5th line till the end in only those lines that contain the word ***"welcome"***.

```bash
#!/bin/bash

# File name as an argument
FILE="$1"

# Check if the file exists
if [[ ! -f "$FILE" ]]; then
    echo "Error: File not found!"
    exit 1
fi

# Use sed to replace 'give' with 'learning' from line 5 to the end in lines containing 'welcome'
sed -i '5,${/welcome/s/give/learning/g}' "$FILE"

# Print a success message
echo "Replacement completed successfully in $FILE."
```

**Step 3:** Make the script executable.

```bash
chmod +x replace_word.sh
```

**Step 4:** Run the script with arguments.

```bash
./replace_word.sh demo.txt
```

![Result 2]()

**Step 5:** Print words replaced file.

```bash
cat demo.txt
```
