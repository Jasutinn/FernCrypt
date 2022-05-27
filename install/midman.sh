#/bin/env bash

printf "\n\t\e[1;92mUPDATING THE INSTALLATION...\e[0m"

sleep 2;

rm --force install.sh

sleep 2;

clear;

printf "\n\n\t\e[1;92mRUN AS SUPERUSER TO RESUME THE INSTALLATION\n\n\n\e[0m"

sleep 2;

mv install/module.sh install/..

mv module.sh install.sh
chmod +x install.sh
chmod +r install.sh

sleep 2;

clear;

sudo ./install.sh
