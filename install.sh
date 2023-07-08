#!/bin/bash
export name='nohashduck';
yes | cp -r "$(pwd)/boot" "/"
yes | cp -r "$(pwd)/home/nohashduck/.config" "/home/$name/"
yes | cp -r "$(pwd)/home/nohashduck/.scripts" "/home/$name/"
yes | cp -r "$(pwd)/home/nohashduck/.icons" "/home/$name/"
yes | cp -r "$(pwd)/home/nohashduck/.themes" "/home/$name/"
yes | cp -r "$(pwd)/home/nohashduck/Pictures" "/home/$name/"
yes | cp -r "$(pwd)/home/nohashduck/.bash_profile" "/home/$name/"
yes | cp -r "$(pwd)/etc" "/"
yes | chmod -R 777 "/home/$name"
sudo pacman -S neofetch kitty neovim ranger firefox gnome-boxes sway swaybg waybar wofi mako grim noto-fonts noto-fonts-cjk noto-fonts-emoji otf-font-awesome alsa-lib alsa-utils pulseaudio file-roller nautilus htop wl-clipboard zenity telegram-desktop
sudo grub-mkconfig -o /boot/grub/grub.cfg
