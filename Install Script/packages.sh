#!/bin/bash
cd ~/
cd dotfiles
mv -v pacman.conf /etc/
mv -v .bashrc ~/
mv -v dunst ~/.config
mv -v hypr ~/.config
mv -v kitty ~/.config
mv -v starship.toml ~/.config
mv -v waybar ~/.config
mv -v wallpapers ~/Pictures/
cd ~/
rmdir -v --ignore-fail-on-non-empty dotfiles
sudo pacman -Syu amd-ucode arc-gtk-theme bitwarden btop dolphin dunst efibootmgr feh ffmpegthumbnailer firefox firejail git gnome-boxes grim gtk4 gvfs gvfs-gphoto2 gvfs-mtp htop hypridle hyprland hyprlang hyprlock hyprpaper hyprutils iwd kate kde-gtk-config kitty kvantum kwayland-integration libreoffice-fresh man-db man-pages materia-gtk-theme nano networkmanager otf-font-awesome pacman-contrib pavucontrol pulseaudio pulseaudio-alsa pulsemixer qbittorrent qt5-wayland qt5ct qt6-wayland reflector smartmontools sof-firmware starship sway swayidle thunar thunar-volman ttf-firacode-nerd ttf-liberation tumbler udisks2-qt5 ufw veracrypt vim waybar wget wireless_tools wofi xdg-desktop-portal-hyprland xdg-utils 

gsettings set org.gnome.desktop.interface gtk-theme 'Adwaita-dark'
gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
mkdir -v aur
cd /aur
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -s -i -c --noconfirm
yay -Syu proton-mail-bin mullvad-browser-bin librewolf-bin --noconfirm
echo "
                                                                                                                                                                            
                                                                                                                                                                            
        GGGGGGGGGGGGG     OOOOOOOOO          OOOOOOOOO     DDDDDDDDDDDDD             TTTTTTTTTTTTTTTTTTTTTTT     OOOOOOOOO                  GGGGGGGGGGGGG     OOOOOOOOO     
     GGG::::::::::::G   OO:::::::::OO      OO:::::::::OO   D::::::::::::DDD          T:::::::::::::::::::::T   OO:::::::::OO             GGG::::::::::::G   OO:::::::::OO   
   GG:::::::::::::::G OO:::::::::::::OO  OO:::::::::::::OO D:::::::::::::::DD        T:::::::::::::::::::::T OO:::::::::::::OO         GG:::::::::::::::G OO:::::::::::::OO 
  G:::::GGGGGGGG::::GO:::::::OOO:::::::OO:::::::OOO:::::::ODDD:::::DDDDD:::::D       T:::::TT:::::::TT:::::TO:::::::OOO:::::::O       G:::::GGGGGGGG::::GO:::::::OOO:::::::O
 G:::::G       GGGGGGO::::::O   O::::::OO::::::O   O::::::O  D:::::D    D:::::D      TTTTTT  T:::::T  TTTTTTO::::::O   O::::::O      G:::::G       GGGGGGO::::::O   O::::::O
G:::::G              O:::::O     O:::::OO:::::O     O:::::O  D:::::D     D:::::D             T:::::T        O:::::O     O:::::O     G:::::G              O:::::O     O:::::O
G:::::G              O:::::O     O:::::OO:::::O     O:::::O  D:::::D     D:::::D             T:::::T        O:::::O     O:::::O     G:::::G              O:::::O     O:::::O
G:::::G    GGGGGGGGGGO:::::O     O:::::OO:::::O     O:::::O  D:::::D     D:::::D             T:::::T        O:::::O     O:::::O     G:::::G    GGGGGGGGGGO:::::O     O:::::O
G:::::G    G::::::::GO:::::O     O:::::OO:::::O     O:::::O  D:::::D     D:::::D             T:::::T        O:::::O     O:::::O     G:::::G    G::::::::GO:::::O     O:::::O
G:::::G    GGGGG::::GO:::::O     O:::::OO:::::O     O:::::O  D:::::D     D:::::D             T:::::T        O:::::O     O:::::O     G:::::G    GGGGG::::GO:::::O     O:::::O
G:::::G        G::::GO:::::O     O:::::OO:::::O     O:::::O  D:::::D     D:::::D             T:::::T        O:::::O     O:::::O     G:::::G        G::::GO:::::O     O:::::O
 G:::::G       G::::GO::::::O   O::::::OO::::::O   O::::::O  D:::::D    D:::::D              T:::::T        O::::::O   O::::::O      G:::::G       G::::GO::::::O   O::::::O
  G:::::GGGGGGGG::::GO:::::::OOO:::::::OO:::::::OOO:::::::ODDD:::::DDDDD:::::D             TT:::::::TT      O:::::::OOO:::::::O       G:::::GGGGGGGG::::GO:::::::OOO:::::::O
   GG:::::::::::::::G OO:::::::::::::OO  OO:::::::::::::OO D:::::::::::::::DD              T:::::::::T       OO:::::::::::::OO         GG:::::::::::::::G OO:::::::::::::OO 
     GGG::::::GGG:::G   OO:::::::::OO      OO:::::::::OO   D::::::::::::DDD                T:::::::::T         OO:::::::::OO             GGG::::::GGG:::G   OO:::::::::OO   
        GGGGGG   GGGG     OOOOOOOOO          OOOOOOOOO     DDDDDDDDDDDDD                   TTTTTTTTTTT           OOOOOOOOO                  GGGGGG   GGGG     OOOOOOOOO       "
                                                                                                                                                                            


