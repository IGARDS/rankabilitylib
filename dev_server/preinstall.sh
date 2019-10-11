#!/bin/bash

#sudo mkdir /var/igards
#sudo mount /dev/sdb /var/igards

sudo adduser --home /var/igards igards
sudo chown igards:igards /var/igards
sudo usermod -aG sudo igards
