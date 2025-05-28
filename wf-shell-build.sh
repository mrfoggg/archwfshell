cd ~/installs-tmp
git clone https://github.com/WayfireWM/wf-shell && cd wf-shell

set -x PKG_CONFIG_PATH /usr/lib/wlroots0.17/pkgconfig /usr/lib/pkgconfig /usr/share/pkgconfig
meson build --prefix=/usr --buildtype=release
