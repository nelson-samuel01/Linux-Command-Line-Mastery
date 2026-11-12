# Linux Command Line: Directory Navigation

## Objective
Practice checking and changing the current directory, using absolute and relative paths, creating nested directories, and listing directory contents.

### Procedure

```bash
pwd
cd /var/log
cd ../..
mkdir -p projects/devops/week1/logs
ls -l
cd /etc && ls -l
cd /var && ls -l
cd /tmp && ls -l
```

## Results and Observations

1. `pwd` displays the current working directory. Its output depends on where the command is run.
2. `cd /var/log` changes to `/var/log`. This is an "absolute path" because it begins at the filesystem root (`/`).
3. `cd ../..` moves up two directory levels. From `/var/log`, this takes you to `/`. This is a "relative path"
4. `mkdir -p projects/devops/week1/logs` creates the nested directories relative to the current directory. 
5. `ls -l` displays a detailed listing of the current directory.
6. `cd /etc && ls -l` changes to `/etc` and lists its contents.
7. `cd /var && ls -l` changes to `/var` and lists its contents.
8. `cd /tmp && ls -l` changes to `/tmp` and lists its contents.


## Summary

`pwd` shows the current location, while `cd` changes directories using absolute or relative paths. `mkdir -p` creates nested directories, and `ls -l` displays directory contents in detail.