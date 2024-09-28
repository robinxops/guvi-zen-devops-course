# 1. File Creation Task

## Task 1: Instructions

**Step 1:** Create a directory called ***my_folder***.

```bash
mkdir my_folder
```

![Output 1](./output-1.png)

**Step 2:** Navigate into ***my_folder***.

```bash
cd my_folder
```

![Output 2](./output-2.png)

**Step 3:** Create a file named ***my_file.txt*** with some text.

```bash
echo "This is my_file.txt" > my_file.txt
```

![Output 3](./output-3.png)

**Step 4:** Create another file named ***another_file.txt*** with some text.

```bash
echo "This is another_file.txt" > another_file.txt
```

![Output 4](./output-4.png)

**Step 5:** Concatenate the content of ***another_file.txt*** to ***my_file.txt*** and display the updated content.

```bash
cat another_file.txt >> my_file.txt
```

![Output 5](./output-5.png)

**Step 6:** List all files and directories in the current directory.

```bash
ls -lah
```

![Output 6](./output-6.png)
