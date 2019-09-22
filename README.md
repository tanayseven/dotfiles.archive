Tanay's Dotfiles
================

Caution, this repo is just ment to sync with local dotfiles, please do not edit any files here directly
-------------------------------------------------------------------------------------------------------

These repository consist of configs that are explicitly edited by me and will be needed in the future in case I need to setup another system with similar config.
You are free to copy-paste parts or complete config, without holding me responsible for anything on your system that breaks and is difficult to recover from. I will not be investing any time in case of any such incident happens.

Syncing config from $HOME to current repository
-----------------------------------------------

`make update` will copy all the updated config from your directories to the current repositories if not up to date

Installed packages (Arch linux)
-------------------------------

1. I3
   [package](https://www.archlinux.org/packages/community/x86_64/i3-gaps/) download `i3-gaps` from the official community packages from the pacman repositories.
   i3 is the WM that is used for it's developer centric design. [More details about i3](https://wiki.archlinux.org/index.php/I3).
   The config can be found in the `.config/i3/config` directory.
2. Termite
   [package](https://www.archlinux.org/packages/community/x86_64/termite/) download `termite` from the official community packages from the pacman repositories. 
   Termite is a light-weght configurable terminal emulator which is modal and therefore keyboard friendly.
   The config can be found in the `.config/i3/config` directory.
3. Polybar
   [package](https://aur.archlinux.org/packages/polybar-git/) download `polybar-git` from the Arch AUR
   Used as a status bar for the i3-wm. [More details about Polybar](https://wiki.archlinux.org/index.php/Polybar).
   The config can be found in the `.config/polybar/config` directory.
4. Dunst
   [package](https://www.archlinux.org/packages/community/x86_64/dunst/) download `dunst` from the official community packages from the pacman repositories.
   Dunst is a highly configurable notifications daemon app. [More details about Dunst](https://wiki.archlinux.org/index.php/Dunst).
   The config can be found in the `.config/dunst/dunstrc`.
5. Rofi
   [package](https://www.archlinux.org/packages/community/x86_64/rofi/) download `rofi` from the official community packages from the pacman repositories.
   Rofi is a configurable and fancy run dialog to launch applications. [More details about Rofi](https://wiki.archlinux.org/index.php/Rofi).
   The connfig can be found in `.Xresources`

