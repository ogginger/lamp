from ubuntu:latest

run apt-get update && apt-get install -y \
expect

run apt-get install -y \
apache2 \
sudo \
vim \
openssh-server \
curl \
git \
software-properties-common

run curl -sL https://deb.nodesource.com/setup_10.x | bash -
run apt-get install -y nodejs

run add-apt-repository ppa:ondrej/php && apt-get update && apt-get install -y \
php7.0 \
libapache2-mod-php7.0

expose 80
expose 22

add config/ /home/.config

volume /var/www/html

workdir /var/www/html
