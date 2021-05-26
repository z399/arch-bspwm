#!/bin/bash

MAIN_PKG(){
sudo pacman -S bspwm sxhkd wmname transmission-gtk mpv chromium gvfs-mtp i3lock pcmanfm-gtk3 gvfs file-roller neofetch feh ntfs-3g picom pulseaudio pulsemixer rofi scrot eog evince kitty wget xed xorg-server xorg-xinit xorg-xrandr xorg-xsetroot --needed --noconfirm
}

EMERGE_CONF(){
chmod +x .config/bspwm/bspwmrc && chmod +x .config/polybar/launch.sh && chmod +x .config/rofi/*
cp -r .config .xinitrc .vim .vimrc .zshrc .fonts /$HOME/ && cd ..
fc-cache -fv
}

YAY_POLYBR_BUILD(){
git clone https://aur.archlinux.org/yay-bin.git && cd yay-bin && makepkg -si --noconfirm && cd .. && yay -S polybar --noconfirm 
}

GRUV_THEME(){
git clone https://github.com/sainnhe/gruvbox-material-gtk --depth 1 TEMP_1

DIR1="/$HOME/.themes"
DIR2="/$HOME/.icons"

if [ -d "$DIR1" ] && [ -d "$DIR2" ]; then  
                                        
echo "DIR exist, copying"                                

else                                                                                                          

  mkdir -p /$HOME/.themes .icons

fi 

mv TEMP_1/themes/* /$HOME/.themes/
mv TEMP_1/icons /$HOME/.icons/  
sudo rm -r TEMP_1  
}

REBT(){
curl https://raw.githubusercontent.com/yperta/walls/main/wallpaper.jpg > /$HOME/.config/gruv.jpg
clear && /bin/echo -e '\n\n' "\e[1;32mREBOOTING IN ..3\e[0m"
sleep 1
/bin/echo -e '\n\n' "\e[1;32mREBOOTING IN ..2\e[0m"
sleep 1
/bin/echo -e '\n\n' "\e[1;32mREBOOTING IN ..1\e[0m"
sleep 1
/bin/echo -e '\n\n' "\e[1;32mREBOOTING NOW......\e[0m"
reboot
}

#begin
#=====

MAIN_PKG
EMERGE_CONF
YAY_POLYBR_BUILD
GRUV_THEME
REBT












