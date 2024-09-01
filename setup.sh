#!/bin/bash

echo "

   ____                ____  _     _     
  / ___|__ _ _ __ ___ |  _ (_)___| |__  
 | |   / _\`| '_ \`  \| |_) | / __| '_ \ 
 | |__| (_| | | | | | |  __/| \__ \ | | |
  \____\__,_|_| |_| |_|_|   |_|___/_| |_|
                         by MithunGowda.B  "



if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    # Linux platform
    if [ -f /etc/debian_version ]; then
        # Debian-based system
        sudo apt update && sudo apt upgrade -y
        sudo apt install python3-pip figlet -y
    elif [ -f /etc/redhat-release ]; then
        # Red Hat-based system
        sudo yum update -y
        sudo yum install python3-pip figlet -y
    elif [ -f /etc/arch-release ]; then
        # Arch-based system
        sudo pacman -Syu --noconfirm
        sudo pacman -S python-pip figlet --noconfirm
    else
        echo "Unsupported Linux distribution."
        exit 1
    fi
elif [[ "$OSTYPE" == "darwin"* ]]; then
    # macOS platform
    if ! command -v brew &> /dev/null; then
        echo "Homebrew not found, installing it now..."
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    fi
    brew update
    brew install python3 figlet
elif [[ "$OSTYPE" == "msys" || "$OSTYPE" == "cygwin" ]]; then
    # Windows platform using Git Bash or Cygwin
    echo "Windows detected. Please install Python, pip, and figlet manually."
    echo "You can install Python from: https://www.python.org/downloads/"
    echo "For figlet, you can use Cygwin's setup or download a Windows-compatible version."
    exit 1
elif [[ "$OSTYPE" == "linux-android"* ]]; then
    # Termux on Android
    pkg update && pkg upgrade -y
    pkg install python figlet -y
else
    echo "Unsupported operating system."
    exit 1
fi

# Install Python packages
pip3 install flask pyfiglet pyngrok requests termcolor

# Print Banner using figlet
echo "Banner:"
figlet "CamPish"
echo "by MithunGowda.B"

# Take ngrok token as input
read -p "Enter your ngrok token (leave empty if not applicable): " ngrok_token

# Set ngrok_token as an environment variable if provided
if [ -n "$ngrok_token" ]; then
    export NGROK_TOKEN="$ngrok_token"
    echo "NGROK_TOKEN environment variable has been set."
else
    echo "No ngrok token provided. Environment variable not set."
fi

echo "Dependencies have been installed successfully."

# Open Instagram profile
instagram_url="https://www.instagram.com/mithun.gowda.b"  # Replace with your actual Instagram URL

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    xdg-open "$instagram_url"
elif [[ "$OSTYPE" == "darwin"* ]]; then
    open "$instagram_url"
elif [[ "$OSTYPE" == "msys" || "$OSTYPE" == "cygwin" ]]; then
    start "$instagram_url"
elif [[ "$OSTYPE" == "linux-android"* ]]; then
    termux-open-url "$instagram_url"
else
    echo "Follow Author on Instagram: $instagram_url"
fi

# Clear screen and run Python app
clear
python3 app.py