#!/bin/bash
# @author cylus
#filename: add-apt-repository.sh
#description: To fix the "bash: add-apt-repository: command not found" error
#last_updated: 6APR2017

sudo apt-get -y install python-software-properties;

sudo apt-get -y install apt-file;

sudo apt-file update;

echo "#############----------replacing the old add-apt-repository----------##############"

#replacing the add-apt-repository file
sudo cp -i /root/fix/add_apt_repository/add-apt-repository /usr/sbin/

echo "#################---the file is created---######################"

sudo chmod o+x /usr/sbin/add-apt-repository;
sudo chown root:root /usr/sbin/add-apt-repository;
echo "#################---permissions changed---######################"
echo "--------everything went well--------------"
