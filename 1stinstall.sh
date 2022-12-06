#!/usr/bin/bash

sudo apt update -y
sudo apt upgrade -y
sudo apt install mc -y
sudo apt install ncdu -y
sudo apt install fail2ban -y
sudo apt install iptstate -y

timedatectl set-timezone Europe/Moscow

#Установка Docker в Ubuntu
sudo apt install docker -y
sudo apt install docker.io -y
sudo usermod -aG docker $USER
sudo usermod -aG docker ${USER}

#Установка Docker Compose на Linux
sudo apt install curl -y
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
#Для установки другой версии замените 1.29.2 на нужный вам номер.
#Если у вас возникли сложности с установкой с помощью curl, читайте альтернативные способы установки.
#Дайте права на выполнение бинарному файлу:
sudo chmod +x /usr/local/bin/docker-compose
#Примечание: Если после установки команда docker-compose не срабатывает, проверьте путь установки. Вы также можете создать символическую ссылку на /usr/bin или любой другой каталог.
#Пример:
#$ sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
#Опционально существует возможность установить автозаполнение в оболочках bash и zsh.
#Проверка установки.
docker-compose --version

#VSCODE
#docker
#remote-containers
