#!/bin/bash
apt update
apt install software-properties-common -y
echo | sudo add-apt-repository ppa:librecad-dev/librecad-stable
apt-get update
apt-get install librecad -y
echo "How to run:"
echo 
echo "Execute in the terminal: librecad"