# Open Source Software Audit: Python
**Student Name:** Aditya Chandra  
**Registration Number:** 24BCE11096  
**Course Code:** NGMC - Open Source Software  

## 📌 Project Overview
This repository contains the practical component of the OSS Capstone Project. It features a suite of five Bash shell scripts designed to audit and interact with the **Python** interpreter and environment on a Linux system.

While the project report provides a deep-dive analysis into the PSF License and Python's community philosophy (found in the PDF submission), these scripts demonstrate technical mastery over the Linux command line.

---

## 🛠️ Script Documentation

### 1. System Identity Report (`system_identity.sh`)
* **Description:** Introduces the Linux system by displaying essential system metadata.
* **Outputs:** Linux distribution, kernel version, current user, uptime, and the governing open-source license.
* **Key Concepts:** Command substitution (`$()`), variables, and output formatting.

### 2. FOSS Package Inspector (`package_inspector.sh`)
* **Description:** Audits the installed state of the Python package.
* **Outputs:** Version number, official summary, and a philosophical case-statement based on the package name.
* **Key Concepts:** If-then-else logic, `dpkg` or `rpm` querying, and `case` statements.

### 3. Disk and Permission Auditor (`disk_auditor.sh`)
* **Description:** Loops through critical system and Python-specific directories to audit security and space.
* **Outputs:** Directory permissions, ownership, and total disk usage.
* **Key Concepts:** For loops, `du`, `ls -ld`, and `awk` field extraction.

### 4. Log File Analyzer (`log_analyzer.sh`)
* **Description:** A utility to parse system logs for specific keywords (e.g., "error" or "python").
* **Outputs:** Total count of keyword occurrences and the last 5 matching lines.
* **Key Concepts:** While-read loops, counter variables, and positional parameters ($1, $2).

### 5. Open Source Manifesto Generator (`manifesto_gen.sh`)
* **Description:** An interactive tool that generates a personalized manifesto regarding software freedom.
* **Outputs:** A formatted `.txt` file containing the user's philosophy on tool-sharing.
* **Key Concepts:** User input (`read`), string concatenation, and file redirection (`>`).

---

## 🚀 Installation & Usage

### 1. Clone the Repository
```bash
git clone [https://github.com/Aditya-69-Chandra/oss-audit-24BCE11096.git](https://github.com/Aditya-69-Chandra/oss-audit-24bce11096.git)
cd oss-audit-24bce11096
