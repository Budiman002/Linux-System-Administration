# Shell Scripting - System Monitoring

Automated Linux system resource monitoring using bash shell scripts.

## 📋 Project Overview

Created as part of Dicoding's Linux System Administrator course to demonstrate proficiency in bash scripting and system monitoring.

## 🎯 Features

- **Memory Usage Monitoring**: Displays used memory in megabytes
- **Disk Space Tracking**: Shows total disk usage in gigabytes
- **Filesystem Analysis**: Lists filesystem usage excluding tmpfs
- **Output Formatting**: Clean, readable output with timed execution

## 📁 Files

- `script.sh`: Main monitoring script
- `history.txt`: Command history for project execution

## 🚀 Usage
```bash
# Make script executable
chmod +x script.sh

# Run the script
./script.sh
```

## 📊 Sample Output
```
The memory Usage (in Megabytes)
Used Memory: 1250 MB

Disk Usage (in Gigabytes)
total       50G    25G    23G   53%

FileSysytem & use%
/dev/sda1 45%
/dev/sdb1 23%
```

## 🧠 What I Learned

- Bash shell scripting fundamentals
- System resource monitoring commands (`free`, `df`, `awk`)
- Output formatting and redirection
- Loop constructs and timing controls

## 📚 Technologies

- Bash
- Linux Commands (free, df, awk, grep)
- Shell Scripting Best Practices
