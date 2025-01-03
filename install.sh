#!/bin/bash
echo " __    __        _                                ";
echo "/ / /\ \ \  ___ | |  ___   ___   _ __ ___    ___  ";
echo "\ \/  \/ / / _ \| | / __| / _ \ | '_ \` _ \  / _ \ ";
echo " \  /\  / |  __/| || (__ | (_) || | | | | ||  __/ ";
echo "  \/  \/   \___||_| \___| \___/ |_| |_| |_| \___| ";
echo "                                                  ";
echo " _            _    _                              ";
echo "| |_   ___   | |_ | |__    ___                    ";
echo "| __| / _ \  | __|| '_ \  / _ \                   ";
echo "| |_ | (_) | | |_ | | | ||  __/                   ";
echo " \__| \___/   \__||_| |_| \___|                   ";
echo "                                                  ";
echo "  _____              _           _  _             ";
echo "  \_   \ _ __   ___ | |_   __ _ | || |            ";
echo "   / /\/| '_ \ / __|| __| / _\` || || |            ";
echo "/\/ /_  | | | |\__ \| |_ | (_| || || |            ";
echo "\____/  |_| |_||___/ \__| \__,_||_||_|            ";
echo "                                                  ";


cd ~/
mkdir -v Documents Downloads Pictures Music Videos
cd dotfiles
sudo mv -v pacman.conf /etc/
mv -v wofi ~/.config
mv -v .bashrc ~/
mv -v dunst ~/.config
mv -v hypr ~/.config
mv -v kitty ~/.config
mv -v starship.toml ~/.config
mv -v waybar ~/.config
mv -v wallpapers ~/Pictures/
mv -v qBittorrent ~/.config
cd ~/

sudo pacman -Syu amd-ucode arc-gtk-theme bitwarden btop breeze breeze-gtk dolphin dunst efibootmgr feh ffmpegthumbnailer firefox firejail git gnome-boxes grim gtk4 gvfs gvfs-gphoto2 gvfs-mtp htop hypridle hyprland hyprlang hyprlock hyprpaper hyprutils iwd kate kde-gtk-config kitty kvantum kwayland-integration libreoffice-fresh lxappearance man-db man-pages materia-gtk-theme nano networkmanager nwg-look otf-font-awesome pacman-contrib pavucontrol pipewire pipewire-alsa pipewire-jack pipewire-pulse qbittorrent qt5-wayland qt5ct qt6-wayland reflector slurp smartmontools sof-firmware starship sway thunar thunar-volman ttf-firacode-nerd ttf-liberation tumbler udisks2-qt5 ufw veracrypt vim waybar wget wireless_tools wl-clipboard wofi xdg-desktop-portal-hyprland xdg-utils 

gsettings set org.gnome.desktop.interface gtk-theme 'Breeze'
gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
mkdir -v aur
cd aur
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -s -i -c --noconfirm
yay -Syu proton-mail-bin mullvad-browser-bin librewolf-bin signal-desktop-beta-bin brave-bin --noconfirm
cd ~/
echo " ██████╗  ██████╗  ██████╗ ██████╗     ████████╗ ██████╗      ██████╗  ██████╗ ";
echo "██╔════╝ ██╔═══██╗██╔═══██╗██╔══██╗    ╚══██╔══╝██╔═══██╗    ██╔════╝ ██╔═══██╗";
echo "██║  ███╗██║   ██║██║   ██║██║  ██║       ██║   ██║   ██║    ██║  ███╗██║   ██║";
echo "██║   ██║██║   ██║██║   ██║██║  ██║       ██║   ██║   ██║    ██║   ██║██║   ██║";
echo "╚██████╔╝╚██████╔╝╚██████╔╝██████╔╝       ██║   ╚██████╔╝    ╚██████╔╝╚██████╔╝";
echo " ╚═════╝  ╚═════╝  ╚═════╝ ╚═════╝        ╚═╝    ╚═════╝      ╚═════╝  ╚═════╝ ";
echo "                                                                               ";



                                                                                                

  "
                                                                                                                                                                            
