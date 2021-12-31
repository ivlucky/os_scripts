#!/bin/bash
if [ "$EUID" -eq 0 ]; then
  echo "You probably run script under root user or with sudo"
  echo "Please, make sure that you are not user with root privileges"
  echo "Exit"
  exit 13
fi
if [ $(getent group docker) ]; then
  echo "group docker exists."
else
  echo "group docker does not exist."
  sudo groupadd docker
fi
sudo usermod -aG docker $USER
echo "$USER has been added to docker group!"
echo "Thats all, now you have to reboot your system."
echo "After that you have to execute for test: newgrp docker | docker run hello-world"