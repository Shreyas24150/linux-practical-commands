# linux-practical-commands
10 Real-World Linux Commands You MUST Know

| Command                             | Use                                |
| ----------------------------------- | ---------------------------------- |
| `pwd`, `ls -la`                     | Know where you are, list all files |
| `cd`, `mkdir`, `touch`              | Navigate & create files/folders    |
| `cat`, `nano`, `vim`                | View and edit config files         |
| `chmod`, `chown`                    | Change permissions & ownership     |
| `sudo`, `apt update`, `apt install` | Install tools, root access         |
| `systemctl status nginx`            | Check service status               |
| `scp`, `rsync`                      | Transfer files to/from server      |
| `df -h`, `du -sh *`                 | Check disk usage                   |
| `ps aux`, `top`, `htop`             | Monitor running processes          |
| `grep`, `tail -f /var/log/syslog`   | Log monitoring and filtering       |

📍 pwd — Print Working Directory - 📌 What it does:
✅ Usage: pwd
Shows your current directory's full path.
Example:/home/shreyas/projects

📂 ls -la — List All Files (with Details) - 
✅ Usage: ls -la
All files, including hidden files (. prefix)
File permissions, ownership, size, date modified, etc.
Example:drwxr-xr-x  3 user group 4096 Jun 25 10:15 .
drwxr-xr-x  6 user group 4096 Jun 25 09:50 ..
-rw-r--r--  1 user group   23 Jun 25 10:10 .bashrc
-rw-r--r--  1 user group  120 Jun 25 10:12 notes.txt

📍 cat – Concatenate and display files 📌 What it does:
✅ Usage: cat filename.txt
Display a file:
Example:cat notes.txt

📍 nano – Simple terminal-based text editor 📌 What it does:
✅ Usage: to create or edit files easily in the terminal
Start editing:
Example:nano filename.txt

📍 vim – Advanced terminal-based text editor 📌 What it does:
✅ Usage: For powerful and efficient editing (has a steep learning curve)
Vim modes:
Normal mode (default): for navigation and commands
Insert mode: for typing text (i to enter, ESC to exit)
Command mode: for saving, quitting, etc. (: prefix)
Example:vim filename.txt

🔐 chmod — Change file permissions
Use: Modify who can read, write, or execute a file/directory.
🔤 Permission types:
r = read
w = write
x = execute
🧑‍🤝‍🧑 Permission groups:
User (u) – Owner of the file
Group (g) – Group that owns the file
Others (o) – Everyone else
All (a) – u + g + o
Example:chmod 644 myfile.txt     # rw-r--r--
chmod 700 script.sh      # rwx------

👤 chown — Change file owner and/or group
Use: Change ownership of a file/directory.
Syntax: chown newuser filename
Change both user and group: chown user:group filename
Recursive change (for folders): chown -R user:group foldername
Example: chown alice report.txt           # Change owner to alice
chown alice:staff report.txt     # Change owner to alice and group to staff
chown -R bob:dev /var/www        # Recursively change ownership of all contents

🔐 sudo — Superuser Do
Use: Run commands with administrative (root) privileges.
Many system-level commands (like installing software or editing system files) require elevated access.
Example: sudo apt update

🔁 apt update — Refresh Package Lists
Use: Updates the list of available packages and versions from software repositories.
Does NOT install or upgrade any packages — it just syncs your system with available updates.
Example: sudo apt update

📦 apt install — Install Software Packages
Use: Installs a package (or packages) on your system.
Example: sudo apt install firefox

🚚 scp — Secure Copy
Use: Copy files or directories between systems over SSH.
Simple but less efficient than rsync (no resume, no incremental).
syntax: scp [options] source destination

🚀 rsync — Remote Sync
Use: Sync files/directories efficiently (can resume, only transfers changes).
Supports local and remote sync via SSH.
Ideal for backups and large file transfers.
syntax: rsync [options] source destination

🧱 df -h — Disk Free (Human-readable)
Use: Shows disk space usage for entire file systems (e.g., partitions, drives).
syntax: df -h
Example: Filesystem      Size  Used Avail Use% Mounted on
/dev/sda1        50G   20G   28G  42% /
tmpfs           2.0G     0  2.0G   0% /dev/shm
/dev/sdb1       100G   60G   35G  64% /mnt/data

📂 du -sh * — Disk Usage (Summary of current dir)
📌 Purpose:
Shows disk usage per item (file/folder) in the current directory.
Syntax: du -sh *
Example: 1.2G   Downloads
248M   Documents
36K    notes.txt

🧾 ps aux — Snapshot of all running processes
Syntax: ps aux
Example: USER       PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
root         1  0.0  0.1 225368  8964 ?        Ss   10:00   0:01 /sbin/init
youruser  1234  1.2  3.5 720000 90000 ?        Sl   10:01   0:25 firefox

📊 top — Real-time system monitor
Syntax: top

🌈 htop — Improved version of top (interactive + colorful)
Syntax: htop

🔎 grep — Search for patterns in text
Syntax: grep "error" filename.txt
Example: grep "nginx" /var/log/syslog

📡 tail -f /var/log/syslog — Live log viewer
example: tail -f /var/log/syslog
