# Linux Command Line: System Monitoring and Administration

## Objective
Inspecting system health and Managing users/groups and configure file permissions and ownership.

### Procedure

```bash
ps aux | head
top
df -h
free -m
uptime
whoami
sudo adduser samuel
sudo groupadd devopsteam
sudo usermod -aG devopsteam samuel
touch secret.txt
chmod 764 secret.txt
ls -l secret.txt
sudo chown samuel:devopsteam secret.txt
ls-l secret.txt
```

## Results and Observations

1. `ps aux | head` displays the header and the first few processes currently running.
2. `top` opens an interactive view of running processes and system resource usage. Press `q` to exit.
3. `df -h` shows filesystem disk space in human-readable units.
4. `free -m` displays memory usage in megabytes.
5. `uptime` reports how long the system has been running, along with its current load averages.
6. `whoami` prints the username of the current session.
7. `sudo adduser samuel` creates user `samuel` and prompt for password and other details.
8. `sudo groupadd devopsteam` creates group `devopsteam`. 
9. `sudo usermod -aG devopsteam samuel` adds `samuel` to the group 'devopsteam' without removing the user from other supplementary groups.
10. `touch secret.txt` creates an empty file named `secret.txt` in the current directory.
11. `chmod 764 secret.txt` sets permissions to `rwxrw-r--`: the owner can read, write, and execute; the group can read and write; and other users can read the file.
12. `ls -l secret.txt` displays the file’s permissions, owner, group, and other details.
13. `sudo chown samuel:devopsteam secret.txt` changes the file’s owner to `samuel` and its group to `devopsteam`. 
14. `ls -l secret.txt' show `samuel` as the owner and `devopsteam` as the group if the ownership change succeeded.


## Summary

These commands demonstrate how to inspect processes, disk space, memory, uptime, and the current user. They also show how to create a user and group, add a user to a group, set file permissions, and change file ownership. Always review the permissions you assign, especially for files containing sensitive information.