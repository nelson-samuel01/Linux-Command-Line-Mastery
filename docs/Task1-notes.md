# Linux Command Line Notes

## Task 1: File Management
### Creating, Copying, and Renaming Files

The following commands were used to create a working directory, create files, write content, copy files, rename files, and remove a file safely.

```bash
mkdir -p ~/practice && cd ~/practice
touch file1.txt file2.txt file3.txt
echo "hello linux" > file1.txt
cp file2.txt file1_copy.txt
mv file2.txt renamed.txt
rm -i file3.txt
```

### Explanation
- `mkdir -p ~/practice && cd ~/practice`
  Creates the `~/practice` directory and moves into it.

- `touch file1.txt file2.txt file3.txt`
  Creates three empty files.

- `echo "hello linux" > file1.txt`
  Writes the text `hello linux` into `file1.txt`.

- `cp file2.txt file1_copy.txt`
  Creates a copy of `file2.txt` named `file1_copy.txt`.

- `mv file2.txt renamed.txt`
  Moves `file2.txt` to `renamed.txt`, effectively renaming it.

- `rm -i file3.txt`
  Deletes the file and prompts for confirmation before removing it.

### Example Prompt and Output

```bash
rm: remove regular empty file 'file3.txt'? y
```

After removing the file, the directory contents were checked using:

```bash
ls -l
```

Output:

```bash
total 4
-rw-r--r-- 1 nelson-samuel nelson-samuel 12 Nov 11 15:16 file1.txt
-rw-r--r-- 1 nelson-samuel nelson-samuel  0 Nov 11 15:17 file1_copy.txt
-rw-r--r-- 1 nelson-samuel nelson-samuel  0 Nov 11 15:15 renamed.txt
```

### Observations
- `cp` creates a duplicate and keeps the original file.
- `mv` moves or renames a file, removing the old name.
- `rm -i` is a safer option because it asks for confirmation before deleting a file.

---

## Task 1b: Viewing and Searching File Contents

This section focuses on viewing file contents, navigating text files, and searching for specific patterns.

### 1. Creating and removing a directory

```bash
mkdir old && touch old/a.txt
rm -r old
```

- `mkdir old` creates a new directory.
- `touch old/a.txt` creates a file inside that directory.
- `rm -r old` removes the directory and all of its contents.

### 2. Displaying file contents

```bash
cat file1.txt
```

Output:

```bash
hello linux
```

`cat` is used to display the contents of a file.

### 3. Viewing file content interactively

```bash
less /etc/passwd
```

This command opens the system user database in a scrollable, read-only format. It is useful for viewing large files. Press `q` to exit.

### 4. Displaying only the first lines of a file

```bash
head -n 5 /etc/passwd
```

Output:

```bash
root:x:0:0:root:/root:/bin/bash
daemon:x:1:1:daemon:/usr/sbin:/usr/sbin/nologin
bin:x:2:2:bin:/bin:/usr/sbin/nologin
sys:x:3:3:sys:/dev:/usr/sbin/nologin
sync:x:4:65534:sync:/bin:/bin/sync
```

`head` shows the first few lines of a file.

### 5. Displaying only the last lines of a file

```bash
tail -n 5 /etc/passwd
```

Output:

```bash
landscape:x:101:103::/var/lib/landscape:/usr/sbin/nologin
polkitd:x:987:987:User for polkitd:/:/usr/sbin/nologin
nelson-samuel:x:1000:1000::/home/nelson-samuel:/bin/bash
Rhoda:x:1001:1001:Rhoda Samuel,,,:/home/Rhoda:/bin/bash
Marvin:x:1002:1002:Marvin Samuel,,,:/home/Marvin:/bin/bash
```

`tail` shows the last few lines of a file.

### 6. Searching for files by name

```bash
find ~ -name "*.txt"
```

This command searches the home directory and its subdirectories for all files ending with `.txt`.

Sample output:

```bash
/home/nelson-samuel/practice/file1_copy.txt
/home/nelson-samuel/practice/file1.txt
/home/nelson-samuel/practice/renamed.txt
/home/nelson-samuel/learning-git/learninggit.txt
```

### 7. Searching for text within a file

```bash
grep "root" /etc/passwd
```

This command searches the `/etc/passwd` file for lines containing the word `root`.

Output:

```bash
root:x:0:0:root:/root:/bin/bash
```

`grep` is used to find matching text in files.

---

## Summary
These commands introduced essential file-management and file-viewing skills in Linux, including:
- creating and deleting files/directories,
- copying and renaming files,
- viewing file content,
- inspecting the beginning and end of a file,
- searching for files and text patterns.

If you want, I can also make this even more polished for submission as a formal lab report or a cleaner study guide version.