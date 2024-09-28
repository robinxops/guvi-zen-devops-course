# 1. File Creation Task

## Task 2: Instructions

**Step 1:** Create 20 files with ***".txt"*** extension.

```bash
for i in {1..20}; do 
  touch "file_$(printf "%02d" $i).txt"; 
done
```

![Output 1](./output-1.png)

**Step 2:** Rename the first 5 files to ***".yml"*** extension.

```bash
for i in {1..5}; do 
  mv "file_$(printf "%02d" $i).txt" "file_$(printf "%02d" $i).yml"; 
done
```

![Output 2](./output-2.png)

***Step 3:*** Print the latest created top 5 files among the total no of files.

```bash
ls -lt | awk 'NR>1' | head -n 5
```

![Output 3](./output-3.png)
