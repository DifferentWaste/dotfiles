#!/bin/bash

sudo pacman -Syu amd-ucode arc-gtk-theme bitwarden btop dunst feh firefox firejail git gnome-boxes grim gtk4 gvfs htop hyprland hyprpaper iwd kate kde-gtk-config kitty materia-gtk-theme nano neofetch network-manager-applet networkmanager otf-font-awesome pacman-contrib plasma-{meta,desktop,wayland-protocols,wayland-session} qbittorrent sddm swayidle thunar ttf-liberation ufw vi vim waybar wget wireless_tools wofi

cd ~/Downloads

cd dotfiles

cp -r dunst ~/.config/
cp hypr -r ~/.config/
cp kitty -r ~/.config/
cp wallpapers -r ~/Pictures/
cp waybar -r /etc/xdg/

cd
mkdir aur
cd /aur

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -s -i -c

echo "GOOD TO GO"
 
