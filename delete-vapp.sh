#!/bin/bash
hostname=$(hostname)
vca login jan@orbitera.com --password H@12FastStart --host de-germany-1-16.vchs.vmware.com 
vca instance use --instance c0a2ec96-55d5-4519-a5d6-4065a904c379
vca vapp delete --vapp vapp-$hostname