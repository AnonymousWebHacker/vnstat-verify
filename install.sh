#!/bin/bash

apt install bc -y

#Create proyect
mkdir /opt/vnstat-verify/
# Check if exist folder
#if exist, then , jump copy steep

cp vnstat-verify.sh /opt/vnstat-verify/
cp vnstat-verify.service /lib/systemd/system/
systemctl daemon-reload

systemctl enable vnstat-verify
systemctl start vnstat-verify