#!/usr/bin/bash
#arcadesArena
#author: shreyanshu shubham
#version: 0.0.1b
#date: 2021.06.21

echo "Preparing..."
sudo apt-get install -qq figlet > /dev/null
sudo apt install -y -qq snapd > /dev/nul
clear

_orange=64
_green=43
_red=1
_violet=128

figlet WELCOME | ./color_it.sh $_orange

cd

echo "Enter your config type:"
echo "[0] fresh setup minimal"
echo "[1] fresh setup extended"
echo "[2] other"
read -p "choice: " _configChoice

func_freshSetupExtended(){
    echo "INFO: getting updates" | ./color_it.sh $_green
    sudo apt update
    echo "INFO: installing visual studio code" | ./color_it.sh $_green
    sudo apt install -qq -y code --classic
    echo "INFO: installing compilers" | ./color_it.sh $_green
    sudo apt install -qq -y gcc g++ python3 python3-pip
    echo "INFO: installing libreoffice" | ./color_it.sh $_green
    sudo apt install -qq -y libreoffice
    echo "INFO: installing google chrome" | ./color_it.sh $_green
    wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
    sudo apt install -y -qq ./google-chrome-stable_current_amd64.deb
    rm google-chrome-stable_current_amd64.deb
    echo "INFO: installing vlc media player" | ./color_it.sh $_green
    sudo snap install -y -qq vlc    
    echo "INFO: installing zoom" | ./color_it.sh $_green
    wget https://zoom.us/client/latest/zoom_amd64.deb
    sudo apt install -y -qq ./zoom_amd64.deb
    rm ./zoom_amd64.deb
    echo "INFO: installing ffmpeg" | ./color_it.sh $_green
    sudo apt-get install -y ffmpeg
    echo "INFO: isntalling obs" | ./color_it.sh $_green
    sudo apt install -y -qq obs-studio
    echo "INFO: installing discord" | ./color_it.sh $_green
    sudo snap install -y -qq discord
}
func_osintTools(){
    echo "INFO: getting osint tools" | ./color_it.sh $_green
    mkdir tools
    cd tools
    git clone https://github.com/Datalux/Osintgram.git
    git clone https://github.com/twintproject/twint.git
    git clone https://github.com/sundowndev/phoneinfoga.git
    git clone https://github.com/sherlock-project/sherlock.git
    cd
}

if [$_configChoice -eq 0]
then
    func_freshSetupExtended()
elif if [$_configChoice -eq 1]
then
    
else if [$_configChoice -eq 2]
then
else
    echo "WARN: invalid account type" | ./color_it.sh $_red
    exit 
fi

echo COMPLETE | ./color_it.sh $_red
