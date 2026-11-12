# Linux Command Line: File Management

## Objective
Practice creating, copying, renaming, deleting, viewing, and searching for files and directories using common Linux commands.

## Part 1: File Management

### Procedure

Run these commands:

```bash
mkdir -p ~/practice && cd ~/practice
touch file1.txt file2.txt file3.txt
echo "hello linux" > file1.txt
cp file2.txt file1_copy.txt
mv file2.txt renamed.txt
rm -i file3.txt
```

### Results and Observations

- `mkdir -p` creates the directory, and `cd` changes into it.
- `touch` creates the three empty files.
- `echo` writes text to `file1.txt`. The `>` operator replaces existing file contents.
- `cp` copies `file2.txt` to `file1_copy.txt`, leaving the original unchanged.
- `mv` renames `file2.txt` to `renamed.txt`.
- `rm -i` prompts for confirmation before deleting `file3.txt`.

After confirming the deletion, `ls -l` can be used to list the remaining files:

```text
-rw-r--r-- ... file1.txt
-rw-r--r-- ... file1_copy.txt
-rw-r--r-- ... renamed.txt
```

The exact file details, such as ownership and timestamps, vary by system.

## Part 2: Viewing and Searching

### Creating and Removing a Directory

```bash
mkdir old && touch old/a.txt
rm -r old
```

`mkdir` creates the directory, and `touch` creates a file inside it. `rm -r` removes the directory and its contents; use it carefully.

### Viewing File Contents

```bash
cat file1.txt
```

Example output:

```text
hello linux
```

`cat` prints a file’s contents to the terminal.

To view a file interactively:

```bash
less /etc/passwd
```

Use the arrow keys to navigate and press `q` to exit.

### Displaying the Beginning or End of a File

```bash
head -n 5 /etc/passwd
tail -n 5 /etc/passwd
```

`head` displays the first five lines; `tail` displays the last five. The output depends on the system.

### Finding Files by Name

```bash
find ~ -name "*.txt"
```

This searches the home directory and its subdirectories for names ending in `.txt`. Results vary depending on which files are present.

### Searching File Contents

```bash
grep "root" /etc/passwd
```

This prints lines in `/etc/passwd` that contain `root`. For example:

```text
root:x:0:0:root:/root:/bin/bash
```

## Summary
These commands introduced essential file-management and file-viewing skills in Linux, including:
- creating and deleting files/directories,
- copying and renaming files,
- viewing file content,
- inspecting the beginning and end of a file,
- searching for files and text patterns.