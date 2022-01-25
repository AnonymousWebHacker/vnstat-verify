#!/bin/bash

#Create proyect
rm -r /opt/vnstat-verify/
# Check if exist folder
#if exist, then , jump copy steep

systemctl disable vnstat-verify
systemctl stop vnstat-verify

rm -r /lib/systemd/system/vnstat-verify.service
systemctl daemon-reload