# i3-polybar configs v2
WiP, more changes will come in time

# Features
Everything is same as in version V1 but this has some changes. Recommended to see V1 README!

# Differences with V1
- new wallpaper
- better "compactibility" with Arch Linux (V1 was made for Manjaro Linux with KDE preinstalled)
- i3
	- increase/decrease brightness or volume is now +/-1% (old +/-10% is available with fn+shift+increase / decrease key)
	- fixed move window to another workspace
	- changed tty-clock style
	- removed lock mode, aka mod+o
	- added new action: lock screen -> mod+l locks directly (no need of mod+o and then l)
	- new mode at mod+o: show / hide bottom bar
	- slightly bigger gaps between windows
	- system autoupdate at startup (60s after bootup) in workspace 9
	- ...
- i3lock
	- locks device with $mod and l
	- shows count of failed attempts
	- much stronger blurred display
	- allowed actions: type password, some fn key actions (touchpad off, sleep, display off, change keyboard backlight), shutdown (via device power button), (tty change, ctrl alt del, ..)
	- protection: when device is shut down / forced to shut down, next boot i3 locks itself and wont unlock till password is typed
- polybar
	- top polybar cleaned, removed:
		- brightness status
		- cpu load and temp
		- ram and swap usage
		- bluetooth status
	- added bottom bar, contains everything removed from the top
		- hidden by default, can be enabled with mod+o mode

- compton
	- modified blur strength
	- stronger dim at inactive windows

# Screenshots
tty-clock:
![clock](https://github.com/horsecz/i3pc-configs/blob/master/i3pc-v2/screenshots/clock.jpg?raw=true)
gaps, new dim:
![gaps](https://github.com/horsecz/i3pc-configs/blob/master/i3pc-v2/screenshots/gaps.jpg?raw=true)
new bottom bar:
![Bar](https://github.com/horsecz/i3pc-configs/blob/master/i3pc-v2/screenshots/botbar.jpg?raw=true)

# Installation
0) Install all prerequisites as in V1
1) copy i3, polybar and compton.conf to ~/.config folder
2) copy wallpaper to your home folder
3) done
