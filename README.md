# i3pc-configs
My i3, polybar &amp; compton config files and scripts.
Guess this is version 1.0, somehow stable.

# Tested on
MANJARO Linux 20, KDE preinstalled
Acer Swift 3, 14" (SF1314-52G-54HC) -> Intel Core i5-8250U, Intel UHD Graphics 620 + nVidia GeForce MX150

# Features
Terminal: i3-sensible-terminal (xfce4-terminal)
Autostart most used apps on special workspaces: Discord, Brave, Thunderbird.
Autostart tty-clock & cava on workspace 10.
Autostart terminal on workspace 1.
Autostart autorun.sh script.
Screenshot with 'Spectacle' (KDE app).
Somehow fixed screen tearing with compton.
Removed window borders & removed default i3 bar.
i3-gaps look.
Lockscreen & lock mode (Mod+O -> lock, shutdown, reboot, reboot to Windows OS [may not be available])

# Bugs
Cava autostarts only rarely

# Prerequisites
- Linux OS
- for i3:
    - i3 WM
    - scrot
    - feh
    - dunst
    - autorun.sh located in /h_sys (can be edited, not necessary)
- for compton.conf:
    - compton (from AUR or Git, must be version which supports kawaise blur, probably some older version)
- for polybar:
    - polybar (I have the one from AUR)
    - amixer
    - pulseaudio
    - bluetoothctl
- nice looking wallpaper:
    - file named 'active' in /home/XXX/Pictures/Wallpapers (can be edited, not needed necessary)
    
# Wallpaper
Default wallpaper file name: 'active'
Default wallpaper path: '/home/XXX/Pictures/Wallpapers'
Can be edited in 'i3/config' file (somewhere in first 30 lines)

# Autorun.sh
Located in /h_sys.
Script that autoruns always when i3 starts up, related to OS & my laptop (turn off swap, autoupdate, mount partitions..)
Can be edited / removed in 'i3/config' file (last 30 lines).

# Lock mode (Mod+O)
Reboot to Windows OS option is connected to 'winreboot' command on my laptop. (script that set ups next boot to Windows 10 and reboots) Recommened to remove this option if you dont have this command. (i3/config -> last 20 lines)

# Screenshots
![Bar](https://github.com/horsecz/i3pc-configs/tree/master/screenshots/polybar.png)
![Gaps](https://github.com/horsecz/i3pc-configs/tree/master/screenshots/gaps-usage.png)
![Compton-Terminal](https://github.com/horsecz/i3pc-configs/tree/master/screenshots/terminal-compton.png)
![Wallpaper](https://github.com/horsecz/i3pc-configs/tree/master/screenshots/wallpaper-bg.png)

# Installation
1) Copy i3, polybar & compton.conf to .config folder
2) Copy active (from wallpaper folder) to Pictures/Wallpapers (or edit config to any other path)
3) Yaay!
