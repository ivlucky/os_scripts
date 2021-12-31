#!/bin/bash
apt-add-repository ppa:remmina-ppa-team/remmina-next -y
apt update -y
apt install remmina remmina-plugin-rdp remmina-plugin-secret -y
killall remmina