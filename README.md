# i3pc-configs
My i3, polybar &amp; compton config files and scripts.
Guess this is version 1.0, somehow stable.

# Tested on
- Arch Linux, with i3 WM
- Acer Swift 3, 14" (SF1314-52G-54HC) -> Intel Core i5-8250U, Intel UHD Graphics 620 + nVidia GeForce MX150

# Features
- Terminal: i3-sensible-terminal (xfce4-terminal)
- Autostart most used apps on special workspaces: Discord, Brave, Thunderbird.
- Autostart tty-clock & cava on workspace 10 (renamed to 'clock').
- Autostart terminal on workspace 1.
- Screenshot with 'scrot'.
- Somehow fixed screen tearing with compton.
- Battery:
    - polybar will indicate when battery is low
    - i3 will notify and shut down laptop when battery has <=5% battery
- i3 features:
    - Set brigthness with fn+brg up / brg down key
        - 0 - 100%, 1 keypress = +/-10%
    - Set volume with fn+vol up/ vol down key
        - 0 - 130%, 1 keypress = +/-10%
        - mute volume with fn+vol mute key (muted sound is indicated in polybar)
    - Removed window borders & removed default i3 bar.
    - i3-gaps look
    - Lockscreen & lock mode (Mod+O -> lock, shutdown, reboot, reboot to Windows OS [may not be available])
- The best polybar ever
    - dark mode friendly
    - brightness, volume, battery, WLAN & bluetooth status
    - RAM / swap usage, CPU usage & temp
    - time

# Bugs
- BT status on polybar shows 'off' only when BT service is stopped (not BT itself)
- Absoulte paths & things related to my device-only in configs (recommended to check configs and edit them):
    - RAM @ polybar: script which checks for swap usage has absoulte path to MY swap partition (polybar/swap.sh)
    - VOL @ polybar: probably may work (or not), related to exact device(s) (Laptop speakers & headset) (polybar/audio.sh)
    - VOL @ polybar: audio protect has same "problem" as line upper (polybar/audio_protect.sh)
    - WLAN @ polybar: WLAN device (interface) name may differ (edit polybar/config -> [module/wlan]; interface = XXX)
        - can obtain from 'ip link show' command
    - i3: recommended check i3 config file because of wallpaper (abs. path), most used apps (may not be installed on ur device), ...

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
    - file named 'active' in your home folder (can be edited, not needed necessary)
    
# Wallpaper
- Default wallpaper file name: 'active'
- Default wallpaper path: '/home/XXX/'
- Can be edited in 'i3/config' file (somewhere in first 30 lines)

# Lock mode (Mod+O)
Reboot to Windows OS option is connected to 'winreboot' command on my laptop. (script that set ups next boot to Windows 10 and reboots) Recommened to remove this option if you dont have this command. (i3/config -> last 20 lines)

# Screenshots
Polybar bar:
![Bar](https://github.com/horsecz/i3pc-configs/blob/master/screenshots/polybar.png?raw=true)
Gaps, basic usage:
![Gaps](https://github.com/horsecz/i3pc-configs/blob/master/screenshots/gaps-usage.png?raw=true)
Compton effects, terminal:
![Compton-Terminal](https://github.com/horsecz/i3pc-configs/blob/master/screenshots/terminal-compton.png?raw=true)
Wallpaper, background:
![Wallpaper](https://github.com/horsecz/i3pc-configs/blob/master/screenshots/wallpaper-bg.png?raw=true)
tty-clock:
![Clock](https://github.com/horsecz/i3pc-configs/blob/master/screenshots/clock.png?raw=true)

# Installation
0) Install all prerequisites and dependencies
1) Copy i3, polybar & compton.conf to .config folder
2) Copy active (from wallpaper folder) to your home folder (or edit config to any other path)
3) Yaay!
