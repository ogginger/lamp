from ubuntu:latest

run apt-get update && apt-get install -y \
apache2 \
php7.0 \
libapache2-mod-php7.0 \
sudo \
nano \
openssh-server \
expect \
nodejs \
git \
npm

expose 80
expose 22

add config/ /home/.config

volume /var/www/html

workdir /var/www/html
