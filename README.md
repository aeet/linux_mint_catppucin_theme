# Linux-Catppuccin-Theme

![img](https://github.com/devcui/Linux-Catppuccin-Theme/blob/main/docs/screenshot.png)

# Install

## 1. Update your system

```bash
sudo apt update
sudo apt upgrade
```
- open `System Settings` -> `Desktop Settings`,choose `Desktop Layout` to `No desktop icons`

# 2. Installing nautilus file manager

```bash
sudo apt install nautilus nautilus-admin nautilus-extension-gnome-terminal
```

- open `System Settings` -> `Preferred Applications`, choose default file manager to `nautilus file manager(named files)`

- open `windows` -> `behavior` and set `Location of newly opened windows` to `center`

# 3. Installing GTK theme

```bash
mv -f themes ~/.themes
```

# 4. Installing icon and start menu icons

```bash
mv -f icons ~/.local/share
mv -f start-menu-icon ~/.local/share/icons
```

# 5. Installing cursors

```bash
mv -f cursors ~/.icons
```

# 6. Installing fonts and wallpapers

```bash
mv -f fonts ~/.local/share
sudo mv -f wallpapers /usr/share/backgrounds
```

# 7. Apply the cinnamon desktop configuration


```bash
rsync -av cinnamon-applet-config/.cinnamon ~/
rsync -av cinnamon-applet-config/.local ~/
dconf load /org/cinnamon/ < ~cinnamon-config/cinnamon-catppcn.conf
```

- set `workspace` config `Type of display` to `Simple buttons`
- right click on the logo in the upper left corner `configure` and left click on the right corner icon `import from a file` choose `cinnamon-config/cinnamon-menu-config.json`
    - you need to modify the file before your set it up
    - in line 120 `"value": "/home/lsteam/.local/share/icons/start-menu-icon/quad-grid.svg"`
    - you need to swap the path to your home dir
- change the system fonts by `font selection`
    - default,desktop,window title font -> `Roboto Regular`
    - document font -> `FiraCode Nerd Font Mono Retlina`
- set `wallpaper`

# 8. Installing ulauncher and ulauncher theme

```bash
wget https://github.com/Ulauncher/Ulauncher/releases/download/5.15.4/ulauncher_5.15.4_all.deb
sudo apt install ./ulauncher_5.15.4_all.deb
rsync -av ulauncher-theme/.config ~/
```

- open `ulauncher` and set `theme` to `catppuccino`

# 9. Installing and configuring conky

installing

```bash
sudo apt install conky-all jq curl moc
sudo vim /etc/environment
```
- add `MUFFIN_NO_SHADOWS=1` to the end of the file

```bash
rsync -av conky-config/conky ~/.config
rsync -av conky-config/autostart ~/.config
```

- you need to check the `conky weather config` from `~/.config/conky/grumicela/scripts/weather.sh`

```bash
#!/bin/bash

# Closebox73
# This script is to get weather data from openweathermap.com in the form of a json file
# so that conky will still display the weather when offline even though it doesn't up to date

# you can use this or replace with yours
api_key=[your key]
# get your city id at https://openweathermap.org/find and replace
city_id=[your city code]

url="api.openweathermap.org/data/2.5/weather?id=${city_id}&appid=${api_key}&cnt=5&units=metric&lang=en"
curl ${url} -s -o ~/.cache/weather.json

exit
```

# 10. Building and installing the glava

```bash
sudo apt-get install libgl1-mesa-dev libpulse0 libpulse-dev libxext6 libxext-dev libxrender-dev libxcomposite-dev liblua5.3-dev lua-lgi lua-filesystem libobs0 libobs-dev meson build-essential gcc git
sudo ldconfig
git clone https://gitlab.com/wild-turtles-publicly-release/glava/glava.git
cd glava
meson build --prefix /usr
ninja -C build
sudo ninja -C build install
glava --copy-config
cd ..
rsync -av glava-config/.config ~/
```

# 11. Installing terminal theme

```bash
curl -L https://raw.githubusercontent.com/catppuccin/gnome-terminal/v0.2.0/install.py | python3 -
```
- you can set terminal's theme and font now

# 12. Installing plank dock

```bash
sudo apt-get install plank
rsync -av plank-theme-config/.config ~/
rsync -av plank-theme-config/.local ~/
```


# Original author

- Youtube: https://youtu.be/AnNx-Se9wkc
- Resources: https://www.pling.com/p/2033080/
- Kofi: https://ko-fi.com/s/99f7e73685
