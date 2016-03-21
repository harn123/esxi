#!/bin/bash
log='/temp/log.txt'
echo "### start deploing vapp ###" >> $log
vca login jan@orbitera.com --password H@12FastStart --host de-germany-1-16.vchs.vmware.com >> $log
vca instance use --instance c0a2ec96-55d5-4519-a5d6-4065a904c379 >> $log
vca vapp create --vapp vappzTMP --vm esxzTMP --catalog 'default-catalog' --template 'ESXi-vApp-template' >> $log
vca vapp power-on --vapp vappzTMP >> $log
echo "Stop deploing vapp" > /temp/deploy-vapp.sh