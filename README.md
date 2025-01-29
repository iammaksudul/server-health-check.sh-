# Server Health Check Script for Linux

## Overview
This script performs a comprehensive health check on a Linux server by monitoring:
- **CPU Load**
- **Memory Usage**
- **Disk Usage**
- **Network Connections**
- **Running Processes**
- **System Uptime**
- **Active Users**
- **Open Ports**
- **System Logs for Errors**
- **Running Services**

## Features
✅ **Automated Health Report** - Logs all data in `/var/log/server_health.log`
✅ **Real-time CPU & Memory Usage Monitoring**
✅ **Checks Active Network Connections & Open Ports**
✅ **Identifies System Errors from Logs**
✅ **Lists Running Services for Debugging**

## Installation & Usage
### 1. **Download the Script**
```bash
wget https://github.com/yourusername/server-health-check.sh
```
### 2. **Give Execution Permission**
```bash
chmod +x server-health-check.sh
```
### 3. **Run the Script**
```bash
./server-health-check.sh
```

## Sample Output
```
--- Server Health Check Report ---
Date: Mon Jan 30 2025
CPU Load: 0.15, 0.10, 0.20
Memory Usage: 1.5GB used, 4GB total
Disk Usage: 40% full
Open Ports: 22, 80, 443
System Logs: No critical errors found
...
```

## Contribution & Support
💡 Found a bug or want to add features? **Feel free to contribute!**  
⭐ **Star this repo if you found it useful!**  
💬 **For questions, open an issue!**

## License
This script is open-source under the **MIT License**.

#Linux #SysAdmin #Monitoring #DevOps #Bash

