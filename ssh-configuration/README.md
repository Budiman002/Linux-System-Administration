# SSH Server Configuration - Security Implementation

Secure SSH server configuration with public key authentication, custom port, and comprehensive logging.

## 📋 Project Overview

Implemented secure SSH server configuration as part of Dicoding's Linux System Administrator course, demonstrating industry-standard security practices.

## 🔐 Configuration Features

### User Management
- Created regular user: `dicoding` (Dicoding Indonesia)
- User list documentation: `daftar-user.txt`

### SSH Security Hardening
- ✅ Public key authentication enabled
- ✅ Password authentication disabled
- ✅ Custom port: 2000 (non-standard)
- ✅ Root login disabled
- ✅ Protocol version 2 enforced

### Logging & Monitoring
- Comprehensive SSH logs: `log-ssh.txt`
- JSON formatted logs: `log-ssh.json`
- Authentication attempt tracking
- Session management logging

## 📁 Files

- `sshd_config`: SSH server configuration
- `log-ssh.txt`: SSH server logs (text format)
- `log-ssh.json`: SSH server logs (JSON format)
- `daftar-user.txt`: System user list

## 🔑 Key Configuration Changes
```bash
# Custom SSH Port
Port 2000

# Public Key Authentication Only
PubkeyAuthentication yes
PasswordAuthentication no

# Disable Root Login
PermitRootLogin no

# Protocol Version
Protocol 2
```

## 🚀 Implementation Process

1. **User Creation**
```bash
   sudo adduser dicoding
```

2. **SSH Key Generation**
```bash
   ssh-keygen -t rsa -b 4096
```

3. **Public Key Deployment**
```bash
   ssh-copy-id -p 2000 dicoding@localhost
```

4. **SSH Configuration**
```bash
   sudo nano /etc/ssh/sshd_config
   sudo systemctl restart ssh
```

5. **Testing Connection**
```bash
   ssh -p 2000 dicoding@localhost
```

## 📊 Project Results

From `log-ssh.txt`, successful implementations include:
- ✅ Server listening on port 2000
- ✅ Public key authentication working
- ✅ Password authentication rejected
- ✅ Session management functional

## 🧠 What I Learned

- SSH server configuration and hardening
- Public key infrastructure (PKI) implementation
- Linux user management
- System logging and monitoring
- Security best practices for remote access
- GPG encryption for sensitive data

## 🛡️ Security Practices Applied

- Non-standard port to reduce automated attacks
- Public key authentication for cryptographic security
- Root login restriction to prevent privilege escalation
- Comprehensive logging for security auditing

## 📚 Technologies

- OpenSSH Server
- Linux User Management
- GPG Encryption
- System Logging (journalctl)
- Bash Shell Scripting
```
