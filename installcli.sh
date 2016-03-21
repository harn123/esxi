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
echo "### start upgrade gdg-httpsclient" >> $log
pip install --upgrade ndg-httpsclient >> $log
#python get-pip.py >> $log
echo "### start install CLI" >> $log
pip install vca-cli >> $log
