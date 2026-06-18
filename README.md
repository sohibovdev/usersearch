# UserRecon v1.0 🔍

UserRecon is a lightweight, efficient Bash script designed for quick and automated OSINT (Open Source Intelligence) username lookups across various social media platforms. It checks whether a target username exists on popular websites and automatically saves the discoveries.

> **Note:** This project was originally created by `@thelinuxchoice` and has been restored and optimized to use HTTP status codes for faster and more accurate results.

## ✨ Features

- 🚀 **Fast Performance:** Uses `curl` to fetch HTTP status codes directly instead of scraping heavy HTML text.
- 🎨 **Clean Interface:** Colorful console output with a unique custom ASCII banner.
- 💾 **Auto-Save:** Saves all found active profile URLs into a structured `username.txt` file automatically.
- 🔄 **Smart Overwrite:** Automatically detects and removes old result files before starting a new scan.

## 📱 Supported Platforms

Currently, the tool checks for availability on the following platforms:
- [x] Instagram
- [x] Facebook
- [x] Twitter (X)
- [x] YouTube (With modern `@handle` system support)
- [x] Blogger

## 🛠 Installation & Usage

Run the following commands in your terminal to set up and execute the script:

1. **Clone the Repository:**
   ```bash
   git clone https://github.com
   cd userrecon
   ```

2. **Grant Execution Permissions:**
   ```bash
   chmod +x userrecon.sh
   ```

3. **Run the Script:**
   ```bash
   ./userrecon.sh
   ```

## 📋 Prerequisites

To run this script, ensure you have the following packages installed on your system:
- `bash` (Compatible with Linux, macOS, Termux, and WSL)
- `curl` (Required for sending network requests)

## 📸 Sample Terminal Output

```text
  _   _               ____                       .-""""-. 

 | | | |___  ___ _ __|  _ \ ___  ___ ___  _ __  /_        _>
 | | | / __|/ _ \ '__| |_) / _ \/ __/ _ \| '_ \ // \      / >
 | |_| \__ \  __/ |  |  _ <  __/ (_| (_) | | | | |\__|    /__>
  \___/|___/\___|_|  |_| \_\___|\___\___/|_| |_|  \\        />
                   v1.0, Author: @thelinuxchoice   \\  __  / >
                                                    '.__.' 

[?] Input Username: john_doe

[*] Checking username john_doe

[+] Instagram:  Found! https://instagram.com
[+] Facebook: Not Found!
[+] Twitter:  Found! https://x.com
[+] YouTube: Not Found!
[+] Blogger: Not Found!

[*] Saved: john_doe.txt
```

## ⚠️ Disclaimer

This tool is created strictly for educational, research, and authorized **OSINT** testing purposes. Do not use it for malicious activities or unauthorized tracking. The author assumes no liability for any misuse or damage caused by this program.
