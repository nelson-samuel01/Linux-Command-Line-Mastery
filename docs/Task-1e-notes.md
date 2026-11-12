# Linux Command Line: Pipes and Redirection

## Objective
Practicing redirecting output and errors 

### Procedure

Run the following commands:

```bash
ls -l /etc > artifacts/etc_listing.txt
echo "This is etc_listing.txt file for second line" >> artifacts/etc_listing.txt
ls /noneexistent 2> artifacts/errors.log
cat /etc/passwd | grep "bash" | sort
cut -d: -fi /etc/passwd | sort | uniq -c 
awk -f: '{print $1, $3}' /etc/passwd | head
ps aux | awk '{print $1}' | sort |uniq -c | sort -nr
```

## Results and Observations

1. `ls -l /etc > artifacts/etc_listing.txt` writes the `/etc` directory listing to `artifacts/etc_listing.txt`. The `>` operator creates the file or replaces its existing contents. The `artifacts` directory already exit in the exercise.

2. `echo "This is etc_listing.txt file for second line" >> artifacts/etc_listing.txt` appends the text to the end of the file. The `>>` operator preserves existing contents.

3. `ls /noneexistent 2> artifacts/errors.log` attempts to list a path that does not exist. The error message is redirected to `artifacts/errors.log` by `2>`, which captures standard error.

4. `cat /etc/passwd | grep "bash" | sort` displays lines in `/etc/passwd` containing `bash`, then sorts the matching lines.

5. `cut -d: -f1 /etc/passwd | sort | uniq -c` This extracts the first colon-separated field, sorts the usernames, and counts occurrences.

6. `awk -F: '{print $1, $3}' /etc/passwd | head`  `-F:` sets the colon as the field separator; `$1` is the username and `$3` is the user ID.

7. `ps aux | awk '{print $1}' | sort | uniq -c | sort -nr` counts processes by user and sorts the counts from highest to lowest. The results depend on which processes are running.


## Summary

These commands demonstrate output redirection (`>`), appending output (`>>`), redirecting errors (`2>`), and passing output between commands with pipes (`|`). `cut` and `awk` can extract fields from structured text, while `sort` and `uniq -c` help organize and count results.