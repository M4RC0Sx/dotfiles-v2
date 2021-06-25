# Dotfile v2.0 - M4RC0Sx
My new setup dotfiles for Artix Linux.

## System Features
* **OS:** [Artix Linux (x86_64)](https://artixlinux.org/)
* **Display Server:** Xorg
* **Display Manager:** Just "startx"
* **Compositor:** compton
* **Shell:** zsh
* **zsh Theme:** [Powerlevel10k](https://github.com/romkatv/powerlevel10k)
* **Terminal Emulator:** [kitty](https://sw.kovidgoyal.net/kitty/)
* **Tiling Window Manager:** [bspwm](https://github.com/baskerville/bspwm)
* **Window Manager Keybindings (Hotkey Daemon):** [sxhkd](https://github.com/baskerville/sxhkd) 
* **Status Bar:** [Polybar](https://github.com/polybar/polybar)
* **Window Switcher / App. Launcher:** [Rofi](https://github.com/davatorium/rofi)
* **Notifications Daemon:** [Dunst](https://github.com/dunst-project/dunst)
* **System Information Tool:** [fastfetch](https://github.com/LinusDierheimer/fastfetch)
* **Dotfiles Manager:** [GNU Stow](https://www.gnu.org/software/stow/)
* **Text Editor #1:** [Neovim](https://neovim.io/)
* **Text Editor #2:** [Visual Studio Code](https://code.visualstudio.com/)
* **Screenshots:** gnome-screenshot


## Installation
1. Install GNU Stow tool on your system;
   - Arch Linux: `$ sudo pacman -S stow`
   - Ubuntu/Debian: `$ sudo apt-get install stow`

2. Clone this repository wherever you want:
    ```bash
    $ git clone https://github.com/M4RC0Sx/dotfiles-v2.git
    ```

3. Get into the cloned repository:
    ```bash
    $ cd dotfiles-v2
    ```

4. Execute the installation script, which will stow all the configuration setup in your $HOME directory.
    ```bash
    $ ./install.sh
    ```

    In case the script does not have execution permissions:
    
    ```bash
    $ sudo chmod +x install.sh
    ```

5. Remember to search for `/home/marcos/` and change it to your home directory in case there are cases. (My idea is to make it work on any home without changing anything).


## Scripts List
- **battery-monitor.sh:** Meant to be run on crontab every 1 minute. It controls de battery status and sends dunst notifications if it is low.

- **feh-bg.sh:** Simple script to set desktop wallpaper at startup with feh. It gets executed when bspwm starts (*bspwmrc*). 


## Custom bin Programs List (~/.local/bin):
- **instant-screenshot:** Takes an instant screenshot of the entire screen, saving it into `~/Images/Screenshot`, with a name based on the date.
- **interactive-screenshot:** Launches gnome-screenshot GUI.

## TODO List
- [x] Manage dotfiles via stow.
- [ ] Add VSCode extensions list to the repository.
- [ ] Add packages list to the repository.
- [ ] Configure polybar.
- [ ] Make a monitor switching script.
- [x] Make a screnshot system script.
- [ ] More customization on kitty and its keybindings.
- [ ] Remove all `/home/marcos/`.
- [ ] Add X11 files to dotfiles via stow.
- [ ] Add crontab files to dotfiles via stow.
- [ ] Add `/etc/profile.d/jre.sh` to dotfiles.
- [ ] Add IntellijIDEA settings to dotfiles.

## Credits
- [Luke Smith](https://lukesmith.xyz/) - I knew about Artix because of one of his videos.

- [S4vitar](https://s4vitar.github.io/bspwm-configuration-files/#/) - Some useful zsh scripts and settings, compton and bspwm aspects.

- [Antonio Sarosi](https://github.com/antoniosarosi/dotfiles) - All Neovim config and plugins based on his setup.
