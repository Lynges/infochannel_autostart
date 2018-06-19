#!/bin/sh
DEBIAN_FRONTEND=noninteractive apt -y install xserver-xorg-video-fbdev xserver-xorg-input-libinput x11-xserver-utils nodm fonts-noto openbox chromium-browser

sed -i "/NODM_X_OPTIONS='-nolisten tcp'/c NODM_X_OPTIONS='-nolisten tcp -nocursor'" /etc/default/nodm
sed -i "/NODM_USER=root/c NODM_USER=dietpi" /etc/default/nodm

cd /home/dietpi
wget https://raw.githubusercontent.com/Lynges/infochannel_autostart/master/xsession
mv xsession .xsession
chmod 777 .xsession

cd /etc/cron.d
wget https://raw.githubusercontent.com/Lynges/infochannel_autostart/master/daily_reboot
