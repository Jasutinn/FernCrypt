#/bin/env bash

printf "\n\t\e[1;92mUPDATING THE INSTALLATION PACKAGES...\e[0m\n\n\n\n\n\n\n\n\n\n\n\n"

sleep 3;

rm --force install.sh

sleep 2;

printf "\n\n\t\e[1;92mRUN AS SUPERUSER TO CONTINUE THE INSTALLATION\n\n\n\e[0m"

sleep 2;

mv install/module.sh install/..

mv module.sh install.sh
chmod +x install.sh
chmod +r install.sh

sleep 2;

sudo ./install.sh

