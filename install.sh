#!/bin/env bash

## Powered by Jasutin

checkroot() {
    SAVE_LD_PRELOAD="$LD_PRELOAD"
    unset LD_PRELOAD
    if [ "$(id -u)" -ne 0 ]; then
        printf "\e[1;31mCannot install, Please run as superuser!\n\e[0m"
        exit 1
     fi
     LD_PRELOAD="$SAVE_LD_PRELOAD"
}

checkroot;

clear;

sleep 2;

printf "\t\e[1;92mCHECKING REQUIREMENTS...\n\n\e[1m"
	apt install python3
	apt install python3-pip
	apt install python-is-python3

clear;

sleep 2;

printf "\t\e[1;92mINSTALLING THE REQUIREMENTS IN SUPERUSER...\n\n\e[1m"
	python -m pip install cryptography
	python -m pip install Fernet
	python -m pip install pwn
	python -m pip install requests
	python -m pip install bs4

sleep 2;

printf "\n\t\e[1;92mCONFIGURING THE MODULE...\n\n\e[1m"

sleep 10;

	mv install/decrypt.py decryptf
	mv install/encrypt.py ferncrypt
	chmod +x install/decryptf
	chmod +x install/ferncrypt
	chmod +r install/decryptf
	chmod +r install/ferncrypt
	cp -r install/decryptf /opt
	cp -r install/ferncrypt /opt
	cp -r install/decryptf /bin
	cp -r install/ferncrypt /bin
	mv install/decryptf /usr/bin
	mv install/ferncrypt /usr/bin
	bash install/module

clear;

printf "\n\t\t\e[1;34mSUCCESS TO INSTALL THE MODULE. YOU CAN ENCRYPT AND DECRYPT THE FILES NOW!\e[0m"
printf "\t\e[1;36mPowered by Jasutin\e[0m"
printf '\n\n\t\e[1;92m"ferncrypt" for encryption and "decryptf" for decryption\e[0m'

sleep 5;
