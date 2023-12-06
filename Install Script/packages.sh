#!/bin/bash
cd ~/
cd dotfiles
mv dunst ~/.config
mv hypr ~/.config
mv kitty ~/.config
mv starship.toml ~/.config
mv waybar /etc/xdg/
mv wallpapers ~/Pictures/
cd ~/
rmdir -r dotfiles
sudo pacman -Syu amd-ucode arc-gtk-theme bitwarden btop dolphin dunst efibootmgr feh firefox firejail git gnome-boxes grim gtk4 gvfs gvfs-gphoto2 gvfs-mtp htop hyprland hyprpaper iwd kate kde-gtk-config kitty kvantum kwayland-integration libreoffice-fresh man-db man-pages materia-gtk-theme nano networkmanager otf-font-awesome pacman-contrib pavucontrol plasma-desktop plasma-meta plasma-wayland-protocols plasma-wayland-session pulseaudio pulseaudio-alsa pulsemixer qbittorrent qt5-wayland qt5ct qt6-wayland reflector smartmontools sof-firmware starship sway swayidle thunar thunar-volman ttf-firacode-nerd ttf-liberation udisks2-qt5 ufw veracrypt vim waybar wget wireless_tools wofi xdg-desktop-portal-hyprland xdg-utils 
mkdir aur
cd /aur
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -s -i -c --noconfirm

echo "
###  ### ### ##    ###  ###   ###  ###
#    # # # # #  #   #   # #   #    # #
# #  # # # # #  #   #   # #   # #  # #
###  ### ### ##     #   ###   ###  ###
"
echo 
"Don't forget aur packages need manual install - per your discretion
You still need to configure Starship"
 
