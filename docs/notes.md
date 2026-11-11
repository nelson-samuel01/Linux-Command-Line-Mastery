## Task 1: File Management 
#### Creating, Copying, and Renaming

COMMANDS:

### ................
mkdir -p ~/practice && cd ~/practice          
#### Create a directory and cd into the directory
touch file1.txt file2.txt file3.txt           
#### create three files 
echo "hello linux" > file1.txt                
#### write into file1.txt
cp file2.txt file1_copy.txt                   
#### copy file2.txt into file1_copy.txt
mv file2.txt renamed.txt                      
#### move file2.txt to renamed.txt (rename.tx created) 
rm -i file3.txt                               
#### remove file3.txt with confirmation prompt


### ................
output of rm -i file3.txt
rm: remove regular empty file 'file3.txt'? y

output of 'ls -l' after rm -i
total 4
-rw-r--r-- 1 nelson-samuel nelson-samuel 12 Nov 11 15:16 file1.txt
-rw-r--r-- 1 nelson-samuel nelson-samuel  0 Nov 11 15:17 file1_copy.txt
-rw-r--r-- 1 nelson-samuel nelson-samuel  0 Nov 11 15:15 renamed.txt
### .................

Observation: 'cp' leaves the original; 'mv' remove the old name, so it acts as rename; 'rm -i' remove the file and asking for confirmation to avoid accidental deletion.

## Task 1b: file management 
### View and search contents

COMMANDS:

### ..................
mkdir old && touch old/a.txt                  # create a directory and create a file in the directory
rm -r old                                     # cammand to remove a directory and it contents
cat file1.txt                                 # command to view what's in a directory 

Output of cat file1.txt
hello linux
### ..................

less /etc/passwd                              # opens and displays the contents of the system's user account database in a scrollable, read-only view. interactive output so press 'q' to quit

### ..................
head -n 5 /etc/passwd                         # displays the first 5 lines of the system's user account file

Output:
root:x:0:0:root:/root:/bin/bash
daemon:x:1:1:daemon:/usr/sbin:/usr/sbin/nologin
bin:x:2:2:bin:/bin:/usr/sbin/nologin
sys:x:3:3:sys:/dev:/usr/sbin/nologin
sync:x:4:65534:sync:/bin:/bin/sync

### ...................
tail -n 5 /etc/passwd                         # displays the last 5 lines of the system's user account file

Output: 
landscape:x:101:103::/var/lib/landscape:/usr/sbin/nologin
polkitd:x:987:987:User for polkitd:/:/usr/sbin/nologin
nelson-samuel:x:1000:1000::/home/nelson-samuel:/bin/bash
Rhoda:x:1001:1001:Rhoda Samuel,,,:/home/Rhoda:/bin/bash
Marvin:x:1002:1002:Marvin Samuel,,,:/home/Marvin:/bin/bash

### ....................
find ~ -name "*.txt"                         #searches your home directory and all its subfolders for any files or folders ending in .txt

Output:
/home/nelson-samuel/.vscode-server/bin/2c33b50b16c472efe58357d1d2a8a5414bc23fbf/node_modules/tas-client/LICENSE.txt
/home/nelson-samuel/.vscode-server/bin/2c33b50b16c472efe58357d1d2a8a5414bc23fbf/node_modules/@devcontainers/cli/ThirdPartyNotices.txt
/home/nelson-samuel/.vscode-server/bin/2c33b50b16c472efe58357d1d2a8a5414bc23fbf/node_modules/@devcontainers/cli/LICENSE.txt
/home/nelson-samuel/.vscode-server/bin/2c33b50b16c472efe58357d1d2a8a5414bc23fbf/node_modules/vscode-oniguruma/NOTICES.txt
/home/nelson-samuel/.vscode-server/bin/2c33b50b16c472efe58357d1d2a8a5414bc23fbf/node_modules/vscode-oniguruma/LICENSE.txt
/home/nelson-samuel/.vscode-server/bin/2c33b50b16c472efe58357d1d2a8a5414bc23fbf/node_modules/vscode-jsonrpc/License.txt
/home/nelson-samuel/.vscode-server/bin/2c33b50b16c472efe58357d1d2a8a5414bc23fbf/node_modules/vscode-jsonrpc/thirdpartynotices.txt
/home/nelson-samuel/.vscode-server/bin/2c33b50b16c472efe58357d1d2a8a5414bc23fbf/node_modules/@vscode/deviceid/NOTICE.txt
/home/nelson-samuel/.vscode-server/bin/2c33b50b16c472efe58357d1d2a8a5414bc23fbf/node_modules/@vscode/deviceid/owners.txt
/home/nelson-samuel/.vscode-server/bin/2c33b50b16c472efe58357d1d2a8a5414bc23fbf/node_modules/@vscode/deviceid/LICENSE.txt
/home/nelson-samuel/.vscode-server/bin/2c33b50b16c472efe58357d1d2a8a5414bc23fbf/node_modules/@vscode/vscode-languagedetection/dist/lib/979.js.LICENSE.txt
/home/nelson-samuel/.vscode-server/bin/2c33b50b16c472efe58357d1d2a8a5414bc23fbf/node_modules/@vscode/vscode-languagedetection/dist/lib/index.js.LICENSE.txt
/home/nelson-samuel/.vscode-server/bin/2c33b50b16c472efe58357d1d2a8a5414bc23fbf/node_modules/@vscode/iconv-lite-umd/lib/iconv-lite-umd.js.LICENSE.txt
/home/nelson-samuel/.vscode-server/bin/2c33b50b16c472efe58357d1d2a8a5414bc23fbf/extensions/ms-vscode.js-debug-companion/ThirdPartyNotices.txt
/home/nelson-samuel/.vscode-server/bin/2c33b50b16c472efe58357d1d2a8a5414bc23fbf/extensions/ms-vscode.js-debug-companion/LICENSE.txt
/home/nelson-samuel/.vscode-server/bin/2c33b50b16c472efe58357d1d2a8a5414bc23fbf/extensions/mermaid-markdown-features/ThirdPartyNotices.txt
/home/nelson-samuel/.vscode-server/bin/2c33b50b16c472efe58357d1d2a8a5414bc23fbf/extensions/ms-vscode.js-debug/ThirdPartyNotices.txt
/home/nelson-samuel/.vscode-server/bin/2c33b50b16c472efe58357d1d2a8a5414bc23fbf/extensions/ms-vscode.js-debug/LICENSE.txt
/home/nelson-samuel/.vscode-server/bin/2c33b50b16c472efe58357d1d2a8a5414bc23fbf/extensions/terminal-suggest/ThirdPartyNotices.txt
/home/nelson-samuel/.vscode-server/bin/2c33b50b16c472efe58357d1d2a8a5414bc23fbf/extensions/TypeScriptTeam.jsts-chat-features/LICENSE.txt
/home/nelson-samuel/.vscode-server/bin/2c33b50b16c472efe58357d1d2a8a5414bc23fbf/extensions/copilot/node_modules/@github/copilot/shims.txt
/home/nelson-samuel/.vscode-server/bin/2c33b50b16c472efe58357d1d2a8a5414bc23fbf/extensions/copilot/ThirdPartyNotices.txt
/home/nelson-samuel/.vscode-server/bin/2c33b50b16c472efe58357d1d2a8a5414bc23fbf/extensions/copilot/LICENSE.txt
/home/nelson-samuel/.vscode-server/bin/2c33b50b16c472efe58357d1d2a8a5414bc23fbf/extensions/ms-vscode.vscode-js-profile-table/ThirdPartyNotices.txt
/home/nelson-samuel/practice/file1_copy.txt
/home/nelson-samuel/practice/file1.txt
/home/nelson-samuel/practice/renamed.txt
/home/nelson-samuel/learning-git/learninggit.txt

### ........................
grep "root" /etc/passwd                         # search the system's user account database for any line containing the text "root" and prints the match lines to screen

Output:
root:x:0:0:root:/root:/bin/bash