#!/bin/sh
# Script permettant de mettre à jour le firmware d'une Raspberry Pi
# Merci de respecter mon travail en citant lepopeye ou lepopeye.fr lors de l'utilisation de cette ssource

# mise a jour raspbian
sudo apt-get update && sudo apt-get -y upgrade && sudo apt-get -y dist-upgrade

# installation update
sudo apt-get install ca-certificates git-core

# download firmware
sudo wget http://goo.gl/1BOfJ -O /usr/bin/rpi-update && sudo chmod +x /usr/bin/rpi-update

# mise a jour
sudo rpi-update

# reboot
sudo reboot
