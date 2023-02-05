#! /usr/bin/bash

sudo rm /etc/machine-id
sudo systemd-machine-id-setup
sudo dhclient -r && sudo dhclient
sudo reboot
