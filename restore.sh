#!/bin/bash
curl -O https://gitlab.com/cscs/transfuse/-/raw/main/transfuse
curl -O https://github.com/itsonlyMiRE/plasma-backup/raw/refs/heads/main/liveuser_transfusion_latest.tar.gz
chmod a+x transfuse && ./transfuse --restore $(whoami)

wget -O /tmp/wallpaper.jpg "https://raw.githubusercontent.com/itsonlyMiRE/plasma-backup/main/wallpaper.jpg" && qdbus-qt6 org.kde.plasmashell /PlasmaShell org.kde.PlasmaShell.evaluateScript "var d=desktops();for(var i=0;i<d.length;i++){d[i].wallpaperPlugin='org.kde.image';d[i].currentConfigGroup=Array('Wallpaper','org.kde.image','General');d[i].writeConfig('Image','file:///tmp/wallpaper.jpg');}"

sudo timedatectl set-timezone America/Los_Angeles
