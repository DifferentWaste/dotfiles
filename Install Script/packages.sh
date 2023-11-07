#!/bin/bash

sudo pacman -Syu amd-ucode arc-gtk-theme ark base base-devel bitwarden brave-bin btop btrfs-progs dolphindunst efibootmgr feh firefox firejail git gnome-boxesgrim gtk4 gvfs gvfs-gphoto2 gvfs-mtp htop hyprland hyprpaper iwd kate kde-gtk-config kitty kvantum kwayland-integration libreoffice-fresh  man-db man-pages materia-gtk-theme nanoneofetch nerdfetch network-manager-applet networkmanager openssh otf-font-awesome pacman-contrib plasma-desktop plasma-meta plasma-wayland-protocols plasma-wayland-session qbittorrent qt5ct qt6-wayland reflector sddm starship sway swayidle thunar thunar-volman ttf-firacode-nerd ttf-liberation udisks2-qt5 ufw veracrypt vi vim waybar wget wireless_tools wofi zram-generator 
cd ~/Downloads
git clone https://github.com/Differentwaste/dotfiles
cd dotfiles

mv -r dunst ~/.config/
mv -r hypr ~/.config/
mv -r kitty ~/.config/
mv -r wallpapers ~/Pictures/
mv -r waybar /etc/xdg/

cd ~/Downloads
rmdir dotfiles
cd
mkdir aur
cd /aur

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -s -i -c

echo "
###  ### ### ##    ###  ###   ###  ###
#    # # # # #  #   #   # #   #    # #
# #  # # # # #  #   #   # #   # #  # #
###  ### ### ##     #   ###   ###  ###
"
echo "Don't forget aur packages need manual install - per your discretion"
 
