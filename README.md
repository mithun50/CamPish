
# CamPish
**CamPish** is a Flask-based web application designed to capture images and gather IP-based geolocation data from users. It integrates with ngrok to securely expose your local server to the internet, enabling external access.

## Table of Contents

- [Features](#Features)
- [Requirements](#Requirements)
- [Installation](#Installation)
- [Usage](#Usage)
- [Customization](#Customization)
- [Disclaimer](#Disclaimer)
- [Author](#Author)

## Features

- Captures images from users and saves them locally.
- Collects and logs geolocation data such as IP address, city, region, country, latitude, and longitude.
- Uses ngrok to expose the local Flask server to the internet.
- Shortens the ngrok URL for easy sharing.
- Cross-platform support for Linux, macOS, Windows (Git Bash or Cygwin), and Termux on Android.
- Displays dynamic ASCII banners using random fonts and colors.

## Requirements

- Python 3.x
- pip (Python package installer)
- <a href="http://ngrok.com">ngrok</a> account and auth token (if using ngrok for remote access)

## Installation

### Clone the Repository

```bash
git clone https://github.com/mithun50/CamPish.git
cd CamPish
```

### Run the Setup Script

The setup script will install all required dependencies and prepare your environment.

For Linux, macOS, and Termux (Android):

```bash
chmod +x setup.sh
./setup.sh
```

For Windows:

1. Install Python 3.x from [python.org](https://www.python.org/downloads/).
2. Install pip and figlet manually or using the Cygwin setup.
3. Run `setup.sh` in Git Bash or manually install dependencies listed in `requirements.txt`.

### Manual Setup (if not using `setup.sh`)

1. Install Python dependencies:
   ```bash
   pip install flask pyfiglet pyngrok requests termcolor
   ```
2. Install `figlet`:
   - **Debian/Ubuntu**: `sudo apt install figlet`
   - **Red Hat/Fedora**: `sudo yum install figlet`
   - **macOS (Homebrew)**: `brew install figlet`
   - **Termux(android)**: `pkg install figlet`

## Usage

1. **Expose the Server**:
   - The script will prompt for your ngrok auth token. If provided, it sets up ngrok to expose your Flask server to the internet.Create an Account on <a href="http://ngrok.com">NGROK</a> and take the auth token

2. **Access the Web Interface**:
   - After starting the server, open your browser and navigate to the provided URL or Send it to Victim(either local or the ngrok public URL).

3. **Capture Data**:
   - The server captures images and logs IP-based geolocation data whenever a user accesses the `/` endpoint.



## Disclaimer

This project is for educational purposes only. It demonstrates basic Flask and Python scripting skills along with web-based data handling. It is not intended for malicious or unauthorized use. The author is not responsible for any misuse of this tool.


## Author

<div align="left">
  <a href="malio:mithungowda.b7411@gmail.com" target="_blank">
    <img src="https://img.shields.io/static/v1?message=Gmail&logo=gmail&label=&color=D14836&logoColor=white&labelColor=&style=for-the-badge" height="35" alt="gmail logo"  />
  </a>
  <a href="http://instagram.com/mithun.gowda.b" target="_blank">
    <img src="https://img.shields.io/static/v1?message=Instagram&logo=instagram&label=&color=E4405F&logoColor=white&labelColor=&style=for-the-badge" height="35" alt="instagram logo"  />
  </a>
  <a href="https://t.me/@MITHUNGOWDA_B" target="_blank">
    <img src="https://img.shields.io/static/v1?message=Telegram&logo=telegram&label=&color=2CA5E0&logoColor=white&labelColor=&style=for-the-badge" height="35" alt="telegram logo"  />
  </a>
</div>
