cd ~/installs-tmp

if not test -d wf-shell
    git clone https://github.com/WayfireWM/wf-shell
end

cd wf-shell

set -x PKG_CONFIG_PATH /usr/lib/wlroots0.17/pkgconfig /usr/lib/pkgconfig /usr/share/pkgconfig
meson build --prefix=/usr --buildtype=release
ninja -C build && sudo ninja -C build install
