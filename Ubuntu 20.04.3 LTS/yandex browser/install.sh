#!/bin/bash
touch /etc/apt/sources.list.d/yandex-browser.list
echo "deb [arch=amd64] http://repo.yandex.ru/yandex-browser/deb beta main" > /etc/apt/sources.list.d/yandex-browser.list
wget https://repo.yandex.ru/yandex-browser/YANDEX-BROWSER-KEY.GPG
apt-key add YANDEX-BROWSER-KEY.GPG
rm YANDEX-BROWSER-KEY.GPG
apt update -y
apt install yandex-browser-beta -y