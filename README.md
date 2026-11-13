# Linux Command Line Mastery

A hands-on introduction to everyday Linux command-line skills. This repository brings together five practice exercises, from navigating the filesystem and managing files to inspecting system resources, checking network configuration, and combining commands with pipes and redirection.

## Overview

The exercises are designed to be run in a Linux shell. They introduce common commands, explain what to look for in their output, and reinforce safe habits such as checking where you are before changing or removing files.

## Command List

### Directory navigation

| Command | What it does |
| --- | --- |
| `pwd` | Prints the current working directory. |
| `cd path` | Changes to a directory; paths can be absolute or relative. |
| `mkdir -p path/to/dir` | Creates a directory and any missing parent directories. |
| `ls -l` | Lists directory contents with details such as permissions and ownership. |

### File management and content

| Command | What it does |
| --- | --- |
| `touch file` | Creates an empty file, or updates its timestamp if it exists. |
| `echo "text" > file` | Writes text to a file, replacing its existing contents. |
| `cp source destination` | Copies a file. |
| `mv source destination` | Moves or renames a file. |
| `rm -i file` | Prompts before removing a file. |
| `rm -r directory` | Removes a directory and its contents; use with care. |
| `cat file` | Prints a file's contents. |
| `less file` | Opens a file for interactive reading; press `q` to exit. |
| `head -n 5 file` | Prints the first five lines. |
| `tail -n 5 file` | Prints the last five lines. |
| `find ~ -name "*.txt"` | Searches the home directory tree for matching filenames. |
| `grep "pattern" file` | Prints lines containing a matching text pattern. |

### System information, users, and permissions

| Command | What it does |
| --- | --- |
| `ps aux` | Displays information about running processes. |
| `top` | Interactively monitors processes and resource use; press `q` to exit. |
| `df -h` | Shows filesystem space usage in human-readable units. |
| `free -m` | Shows memory usage in megabytes. |
| `uptime` | Shows how long the system has been running and its load averages. |
| `whoami` | Prints the current username. |
| `sudo adduser username` | Creates a user on systems that provide `adduser`. |
| `sudo groupadd groupname` | Creates a group. |
| `sudo usermod -aG groupname username` | Adds a user to a supplementary group. |
| `chmod 764 file` | Sets owner/group/other permissions to `rwx`/`rw-`/`r--`. |
| `sudo chown user:group file` | Changes a file's owner and group. |

### Networking

| Command | What it does |
| --- | --- |
| `getent hosts hostname` | Looks up host information using the system's configured name services. |
| `ping -c 4 hostname` | Sends four network probes and reports replies and packet loss. |
| `ip addr` | Lists network interfaces and their IP addresses. |
| `ss -tuln` | Lists listening TCP and UDP sockets using numeric addresses and ports. |

Network checks depend on connectivity, firewall rules, and services active on the machine.

### Pipes, redirection, and text processing

| Syntax or command | What it does |
| --- | --- |
| `command1 \| command2` | Sends the first command's standard output to the second command. |
| `> file` | Writes standard output to a file, replacing its contents. |
| `>> file` | Appends standard output to a file. |
| `2> file` | Writes standard error to a file. |
| `cut -d: -f1 file` | Extracts a selected field using `:` as the delimiter. |
| `awk -F: '{print $1, $3}' file` | Prints selected colon-separated fields. |
| `sort` | Sorts lines of text. |
| `uniq -c` | Counts adjacent repeated lines; sort first when grouping all duplicates. |

## Completion Checklist

- [ ] **Task 1 — File management and viewing:** Create, copy, rename, and remove files; view file contents; find filenames and search text. See [docs/Task-1-notes.md](docs/Task-1-notes.md).
- [ ] **Task 1b — Directory navigation:** Check the current location, move with absolute and relative paths, create nested directories, and inspect listings. See [docs/Task-1b-notes.md](docs/Task-1b-notes.md).
- [ ] **Task 1c — System monitoring and administration:** Inspect processes and resource usage; practice user/group management, permissions, and ownership. See [docs/Task-1c-notes.md](docs/Task-1c-notes.md).
- [ ] **Task 1d — Networking basics:** Check name resolution, connectivity, interface addresses, and listening sockets. See [docs/Task-1d-notes.md](docs/Task-1d-notes.md).
- [ ] **Task 1e — Pipes and redirection:** Redirect output and errors, chain commands, and extract, sort, and count text fields. See [docs/Task-1e-notes.md](docs/Task-1e-notes.md).

## Final Learning Summary

Across these exercises, you progress from navigating the filesystem to working with its contents, then broaden your view to system and network state. The final exercises show how to combine small utilities into useful workflows: redirect results for later review, filter and transform text, and pass output from one command to another.

By completing the checklist, you will have practiced how to:

- move confidently through directories and distinguish absolute from relative paths;
- create, inspect, copy, rename, search for, and remove files;
- read command output and use it to understand system resources and network state;
- recognize how users, groups, ownership, and permission bits control file access; and
- build simple command pipelines and save both normal output and errors.

Keep practicing in a safe environment, read command options before using them, and verify paths and permissions before making changes.