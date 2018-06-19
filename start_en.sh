#!/bin/sh
wget https://raw.githubusercontent.com/Lynges/infochannel_autostart/master/autoinstall.sh
chmod +x autoinstall.sh
./autoinstall.sh

sed -i 's;http://localhost:8080;https://docs.google.com/presentation/d/e/2PACX-1vRcxD0NpEuCX0fvUYnnrDkLV9DIL43PEv_KSrA59douBSWgnxP69xR4ON-Ft4loWpDDSd8Ht0bma811/pub?start=true\\\&loop=true\\\&delayms=7000;g' /root/.xsession
