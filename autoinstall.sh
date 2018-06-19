#!/bin/sh
DEBIAN_FRONTEND=noninteractive apt -y install xserver-xorg-video-fbdev xserver-xorg-input-libinput nodm fonts-noto openbox chromium-browser

sed -i "/NODM_X_OPTIONS='-nolisten tcp'/c NODM_X_OPTIONS='-nolisten tcp -nocursor'" /etc/default/nodm


