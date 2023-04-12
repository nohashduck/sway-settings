#!/bin/bash
sudo yes | cp -r "$(pwd)/boot" "/"
sudo yes | cp -r "$(pwd)/home/nohashduck/.config" "/home/$(whoami)/"
sudo yes | cp -r "$(pwd)/home/nohashduck/.scripts" "/home/$(whoami)/"
sudo yes | cp -r "$(pwd)/home/nohashduck/.icons" "/home/$(whoami)/"
sudo yes | cp -r "$(pwd)/home/nohashduck/.themes" "/home/$(whoami)/"
sudo yes | cp -r "$(pwd)/home/nohashduck/Pictures" "/home/$(whoami)/"
sudo yes | cp -r "$(pwd)/home/nohashduck/.bash_profile" "/home/$(whoami)/"
sudo yes | cp -r "$(pwd)/home/nohashduck/.vimrc" "/home/$(whoami)/"
sudo yes | cp -r "$(pwd)/etc" "/"
sudo yes | chmod -R 777 "/home/$(whoami)"
sudo pacman -S neofetch kitty vim ranger firefox code gnome-boxes sway swaybg waybar wofi mako grim noto-fonts noto-fonts-cjk noto-fonts-emoji otf-font-awesome xorg-xwayland alsa-lib alsa-utils pulseaudio file-roller nautilus htop wl-clipboard zenity telegram-desktop
sudo grub-mkconfig -o /boot/grub/grub.cfg
printf "\033[91m Reboot system! \033[0m \n"