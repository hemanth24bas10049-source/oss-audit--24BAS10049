# oss-audit--24BAS10049
"OSS Capstone Project: Python Audit. Contains 5 shell scripts (System Identity, Package Inspector, Disk Auditor, Log Analyzer, and Manifesto Generator) and a full philosophical audit report."


## Open Source Software Audit: Python

**Student Name:** [HEMANTH KRISHNI P]  
**Registration Number:** [24BAS10049]  
**Course:** Open Source Software (OSS) - NGMC  
**Target Software:** Python Programming Language (PSF License)

### 📋 Project Overview
This repository contains the technical component of a 16-page system audit. The goal is to demonstrate practical Linux administration skills and an understanding of the Free and Open Source Software (FOSS) ecosystem by auditing the footprint of the **Python** programming language on a Linux environment, particularly its role as the foundation for modern Artificial Intelligence.

### 📂 Script Descriptions
Every script is written in Bash and includes comments for technical clarity:
* **script1.sh (System Identity):** Captures kernel version, current user, and system uptime to identify the audit environment.
* **script2.sh (Package Inspector):** Uses `dpkg` and a `case` statement to verify Python3 installation, versioning, and philosophical purpose.
* **script3.sh (Disk Auditor):** Implements a `for` loop to audit directory sizes and permissions of critical system paths and Python `site-packages`.
* **script4.sh (Log Analyzer):** Uses a `while-read` loop to parse `/var/log/dpkg.log` or custom logs and count Python-related system events.
* **script5.sh (Manifesto Gen):** An interactive script that captures user philosophy on 'Freedom' and 'AI' and saves it to a persistent `.txt` file.

### 🚀 Step-by-Step Instructions
To execute these scripts on a Ubuntu/WSL terminal, follow these steps:

1.  **Clone the repository:**
    ```bash
    git clone https://github.com/[YOUR_USERNAME]/oss-audit-[ROLL_NUMBER].git
    cd oss-audit-[ROLL_NUMBER]
    ```

2.  **Grant Execution Permissions:**
    ```bash
    chmod +x *.sh
    ```

3.  **Run the Audit Scripts:**
    * Identity: `./script1.sh`
    * Package: `./script2.sh`
    * Disk: `./script3.sh`
    * Logs: `./script4.sh /var/log/dpkg.log python`
    * Manifesto: `./script5.sh`

### 🛠️ Dependencies
* **OS:** Ubuntu 20.04/22.04 LTS or WSL2.
* **Tools:** bash, dpkg, grep, awk.
* **Software:** Python 3.x (`sudo apt install python3`).

---




