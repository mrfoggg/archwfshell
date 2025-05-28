sudo pacman -S micro bat btop alacritty fastfetch make gtkmm3 gtk-layer-shell libdbusmenu-gtk3 glib2-devel

mkdir ~/installs-tmp
cd ~/installs-tmp

git clone https://aur.archlinux.org/yay.git && cd yay
makepkg -si
