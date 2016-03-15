#!/bin/sh -e
echo '-- provisioning -> inicial.sh --'

# locales configurations
sudo locale-gen pt_BR
sudo locale-gen pt_BR.UTF-8
sudo dpkg-reconfigure locales
sudo update-locale LANG=pt_BR.UTF-8

# disable ipv6
sudo echo "net.ipv6.conf.all.disable_ipv6 = 1" >> /etc/sysctl.conf
sudo echo "net.ipv6.conf.default.disable_ipv6 = 1" >> /etc/sysctl.conf
sudo echo "net.ipv6.conf.lo.disable_ipv6 = 1" >> /etc/sysctl.conf
sudo sysctl -p


# set timezone
 sudo timedatectl set-timezone America/Porto_Velho

# updating apt-get
sudo apt-get -y autoremove
sudo apt-get -y update

