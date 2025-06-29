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


cd ~/
mkdir -v Documents 
mkdir -v Downloads 
mkdir -v Pictures 
mkdir -v Pictures/Screenshots 
mkdir -v Music 
mkdir -v Videos

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
mv -v plasma.sh ~/
cd ~/

sudo pacman -Syu amd-ucode apparmor bitwarden btop breeze breeze-gtk dunst efibootmgr feh ffmpegthumbnailer firefox firejail git gnome-boxes grim gtk4 gvfs gvfs-gphoto2 gvfs-mtp htop hypridle hyprland hyprlang hyprlock hyprpaper hyprutils iwd kate kde-gtk-config kitty kvantum kwayland-integration libreoffice-fresh lxappearance man-db man-pages materia-gtk-theme nano networkmanager noto-fonts-emoji nwg-look otf-font-awesome pacman-contrib pavucontrol pipewire pipewire-alsa pipewire-jack pipewire-pulse plasma-desktop plasma-integration qbittorrent qt5-wayland qt5ct qt6-wayland reflector signal-desktop slurp smartmontools sof-firmware starship steam sway thunar thunar-volman ttf-firacode-nerd ttf-liberation ttf-terminus-nerd tumbler udisks2-qt5 ufw veracrypt vim vulkan-radeon vulkan-tools waybar wget wireless_tools wl-clipboard wofi xdg-desktop-portal-hyprland xdg-utils 

gsettings set org.gnome.desktop.interface gtk-theme 'Breeze'
gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
mkdir -v aur
cd aur
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -s -i -c --noconfirm
yay -Syu proton-mail-bin mullvad-browser-bin librewolf-bin --noconfirm
cd ~/
sudo ufw default deny
sudo ufw allow from 192.168.0.0/24
sudo ufw limit ssh
sudo ufw enable
sudo ufw status 

systemctl enable ufw
systemctl start ufw
systemctl enable reflector.timer
systemctl enable apparmor
systemctl enable paccache.timer

echo "                                                                   dddddddd                                                                                        ";
echo "        GGGGGGGGGGGGG                                              d::::::d              tttt                                        GGGGGGGGGGGGG                 ";
echo "     GGG::::::::::::G                                              d::::::d           ttt:::t                                     GGG::::::::::::G                 ";
echo "   GG:::::::::::::::G                                              d::::::d           t:::::t                                   GG:::::::::::::::G                 ";
echo "  G:::::GGGGGGGG::::G                                              d:::::d            t:::::t                                  G:::::GGGGGGGG::::G                 ";
echo " G:::::G       GGGGGG   ooooooooooo      ooooooooooo       ddddddddd:::::d      ttttttt:::::ttttttt       ooooooooooo         G:::::G       GGGGGG   ooooooooooo   ";
echo "G:::::G               oo:::::::::::oo  oo:::::::::::oo   dd::::::::::::::d      t:::::::::::::::::t     oo:::::::::::oo      G:::::G               oo:::::::::::oo ";
echo "G:::::G              o:::::::::::::::oo:::::::::::::::o d::::::::::::::::d      t:::::::::::::::::t    o:::::::::::::::o     G:::::G              o:::::::::::::::o";
echo "G:::::G    GGGGGGGGGGo:::::ooooo:::::oo:::::ooooo:::::od:::::::ddddd:::::d      tttttt:::::::tttttt    o:::::ooooo:::::o     G:::::G    GGGGGGGGGGo:::::ooooo:::::o";
echo "G:::::G    G::::::::Go::::o     o::::oo::::o     o::::od::::::d    d:::::d            t:::::t          o::::o     o::::o     G:::::G    G::::::::Go::::o     o::::o";
echo "G:::::G    GGGGG::::Go::::o     o::::oo::::o     o::::od:::::d     d:::::d            t:::::t          o::::o     o::::o     G:::::G    GGGGG::::Go::::o     o::::o";
echo "G:::::G        G::::Go::::o     o::::oo::::o     o::::od:::::d     d:::::d            t:::::t          o::::o     o::::o     G:::::G        G::::Go::::o     o::::o";
echo " G:::::G       G::::Go::::o     o::::oo::::o     o::::od:::::d     d:::::d            t:::::t    tttttto::::o     o::::o      G:::::G       G::::Go::::o     o::::o";
echo "  G:::::GGGGGGGG::::Go:::::ooooo:::::oo:::::ooooo:::::od::::::ddddd::::::dd           t::::::tttt:::::to:::::ooooo:::::o       G:::::GGGGGGGG::::Go:::::ooooo:::::o";
echo "   GG:::::::::::::::Go:::::::::::::::oo:::::::::::::::o d:::::::::::::::::d           tt::::::::::::::to:::::::::::::::o        GG:::::::::::::::Go:::::::::::::::o";
echo "     GGG::::::GGG:::G oo:::::::::::oo  oo:::::::::::oo   d:::::::::ddd::::d             tt:::::::::::tt oo:::::::::::oo           GGG::::::GGG:::G oo:::::::::::oo ";
echo "        GGGGGG   GGGG   ooooooooooo      ooooooooooo      ddddddddd   ddddd               ttttttttttt     ooooooooooo                GGGGGG   GGGG   ooooooooooo   ";


echo " enable apparmor in /boot/loader/entries as lsm=landlock,lockdown,yama,integrity,apparmor,bpf"
