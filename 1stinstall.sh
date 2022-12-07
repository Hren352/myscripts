#!/usr/bin/bash

sudo clear
sudo echo "update ..."
sudo apt update -y
sudo sleep 2

sudo clear
sudo echo "update ......"
sudo apt upgrade -y
sudo sleep 2

sudo clear
sudo echo "installing MC"
sudo sudo apt install mc -y
sudo sleep 2

sudo clear
sudo echo "installing NCDU"
sudo apt install ncdu -y
sudo sleep 2

sudo clear
sudo echo "installing fail2ban"
sudo apt install fail2ban -y
sudo sleep 2

sudo clear
sudo echo "installing iptstate"
sudo apt install iptstate -y
sudo sleep 2

sudo clear
sudo echo "setup timezone"
timedatectl set-timezone Europe/Moscow
sudo sleep 2

#Опция -e - добавит \n после каждой строки.
#echo -en "строка 1\nстрока 2" >> /tmp/test.txt

echo -en "net.ipv6.conf.all.disable_ipv6 = 1\nnet.ipv6.conf.default.disable_ipv6 = 1\nnet.ipv6.conf.lo.disable_ipv6 = 1">> /etc/sysctl.conf
#net.ipv6.conf.all.disable_ipv6 = 1
#net.ipv6.conf.default.disable_ipv6 = 1
#net.ipv6.conf.lo.disable_ipv6 = 1
#Сохраните файл, закройте его и перезапустите sysctl для обновления конфигурации:
sudo sysctl -p


sudo clear
sudo echo "setup Docker"
#Установка Docker в Ubuntu
sudo apt install docker -y
sudo apt install docker.io -y
sudo usermod -aG docker $USER
sudo usermod -aG docker ${USER}

#Установка Docker Compose на Linux
sudo echo "setup Docker Compose"
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

#cleaning system
sudo apt-get autoclean -y
sudo apt-get autoremove -y
sudo apt-get clean -y
sudo apt-get -f install -y
