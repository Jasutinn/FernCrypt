#!/bin/env bash

# __author__ = ('Justine Dela Torre (Jasutin)')
# __all__ = ('encrypt', 'decrypt')

checkroot() {
    SAVE_LD_PRELOAD="$LD_PRELOAD"
    unset LD_PRELOAD
    if [ "$(id -u)" -ne 0 ]; then
        printf "\e[1;31mInstall abort, Please run the installation as superuser!\n\e[0m"
        exit 1
     fi
     LD_PRELOAD="$SAVE_LD_PRELOAD"
}

checkroot;

clear;

sleep 2;

printf "\t\e[1;92mCHECKING THE REQUIREMENTS IN SUDO...\n\n\e[1m"
	apt install python3
	apt install python3-pip
	apt install python-is-python3

clear;

sleep 5;

printf "\n\t\e[1;92mCONFIGURING THE MODULE...\n\n\e[1m"

sleep 10;

	mv install/decrypt.py decryptf
	mv install/encrypt.py ferncrypt
	chmod +x decryptf
	chmod +x ferncrypt
	chmod +r decryptf
	chmod +r ferncrypt
	cp decryptf /opt
	cp ferncrypt /opt
	cp decryptf /bin
	cp ferncrypt /bin
	mv decryptf /usr/bin
	mv ferncrypt /usr/bin
	rm -rf *
clear;

printf "\n\t\e[1;34mSUCCESS TO INSTALL THE MODULE. YOU CAN ENCRYPT AND DECRYPT THE FILES NOW!\e[0m"
printf "\n\t\e[1;36mPowered by Jasutin\e[0m"
printf '\n\n\t\e[1;92m"ferncrypt" for encryption and "decryptf" for decryption\e[0m'

sleep 5;
