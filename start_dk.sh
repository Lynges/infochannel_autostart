#!/bin/sh
wget https://raw.githubusercontent.com/Lynges/infochannel_autostart/master/autoinstall.sh
chmod +x autoinstall.sh
./autoinstall.sh

sed -i 's;http://localhost:8080;https://docs.google.com/presentation/d/e/2PACX-1vTgsLkuhnHVGmVA2VAbREN4AjMAHbMppX1f6Gr4WauBAu9s8IyNzFKra5PnYb9YWo2aLZD8gdivhSrR/pub?start=true\\\&loop=true\\\&delayms=7000;g' /home/dietpi/.xsession
