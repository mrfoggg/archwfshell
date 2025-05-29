cd ~/installs-tmp

if not test -d wf-shell
    git clone https://github.com/WayfireWM/wf-shell
end

cd wf-shell

set -x PKG_CONFIG_PATH /usr/lib/wlroots0.17/pkgconfig /usr/lib/pkgconfig /usr/share/pkgconfig
meson build --prefix=/usr --buildtype=release
ninja -C build && sudo ninja -C build install

set session_dir /usr/share/wayland-sessions
set session_file $session_dir/wayfire.desktop

# Убедимся, что каталог существует
if not test -d $session_dir
    echo "Создаю каталог $session_dir"
    sudo mkdir -p $session_dir
end

# Создаём .desktop файл
echo "Создаю $session_file"
echo "[Desktop Entry]
Name=Wayfire
Comment=Wayfire Wayland Compositor
Exec=wayfire
Type=Application
DesktopNames=wayfire" | sudo tee $session_file > /dev/null

# Проверим
if test -f $session_file
    echo "Файл успешно создан: $session_file"
else
    echo "Ошибка при создании файла"
end
