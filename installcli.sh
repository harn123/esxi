#!/bin/bash

mkdir /temp
cd /temp
log='/temp/log.txt'
echo "### start update ###" >> $log
apt-get update >> $log
echo "### start install python ###" >> $log
apt-get install -y build-essential libffi-dev libssl-dev libxml2-dev libxslt-dev python-dev >> $log
echo "### start wget ###" >> $log
wget -O /temp/get-pip.py https://bootstrap.pypa.io/get-pip.py >> $log
echo "### start get-pip ###" >> $log
python get-pip.py >> $log
echo "### start upgrade gdg-httpsclient ###" >> $log
pip install --upgrade ndg-httpsclient >> $log
#python get-pip.py >> $log
echo "### start install CLI ###" >> $log
pip install vca-cli >> $log
wget -O /temp/deploy-vapp.sh  https://orbiteraimageseastus.blob.core.windows.net/esxi/deploy-vapp.sh >> $log
echo "### start deployment ###" >> $log
sudo /bin/bash /temp/deploy-vapp.sh 
wget -O /etc/init.d/delete-vapp.sh https://orbiteraimageseastus.blob.core.windows.net/esxi/delete-vapp.sh >> $log
echo "### set cleaning ###" >> $log
chmod a+x /etc/init.d/delete-vapp.sh >> $log
ln -s /etc/init.d/delete-vapp.sh /etc/rc0.d/K05deletevapp

