#!/bin/bash

sudo pacman -Syu amd-ucode arc-gtk-theme bitwarden btop dunst feh firefox firejail git gnome-boxes grim gtk4 gvfs htop hyprland hyprpaper iwd kate kde-gtk-config kitty materia-gtk-theme nano neofetch network-manager-applet networkmanager otf-font-awesome pacman-contrib plasma-{meta,desktop,wayland-protocols,wayland-session} qbittorrent swayidle thunar ttf-liberation ufw vi vim waybar wget wireless_tools wofi

cd ~/Downloads

git clone https://github.com/DifferentWaste/dotfiles/tree/main

cd dotfiles

cp dunst ~/.config/
cp hypr ~/.config/
cp kitty ~/.config/
cp wallpapers ~/Pictures/
cp waybar /etc/xdg/

echo "GOOD TO GO"
 
