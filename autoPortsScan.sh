#!/bin/bash

#Colours
green="\e[0;32m\033[1m"
end="\033[0m\e[0m"
red="\e[0;31m\033[1m"
blue="\e[0;34m\033[1m"
yellow="\e[0;33m\033[1m"
purple="\e[0;35m\033[1m"
turquoise="\e[0;36m\033[1m"
gray="\e[0;37m\033[1m"


function helpPanel(){
    echo -e "\n${red}[*]${green} AUTO PORTS SCAN"
}

helpPanel;

read -p "IP to attack: " ip_v
if [ "$ip_v" != "" ]
then
    echo "IP: $ip_v"
    nmap -sSV -p- --min-rate 5000 $ip_v -Pn
else
    echo "IP NOT FOUND!"
fi