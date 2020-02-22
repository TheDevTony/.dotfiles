# Help Guide

## Structure

    .dotfiles           <-- top-level hidden dir
        dotbot          <-- dotbot scripts
        configs         <-- all configuration files
        packages        <-- lists of packages to install prior to dotfiles
        scripts         <-- useful scripts
        install.conf    <-- config defining the links: source -> dest
        install.sh      <-- installation script
        wallpapers      <-- all wallpaper files
            4k          <-- 4k wallpapers for xps15 setup
            ultrawide   <-- ultra-wide wallpapers for pc setup

## Install Packages

('git' is required)

Install packages before setting up the dotfiles.
Firstly install the 'pacman' packages.

    sudo pacman -S --needed - < packages.txt

Secondly, install 'yay' by executing the following:

    git clone https://aur.archlinux.org/yay.git
    cd yay
    makepkg -si

Then install the 'aur' packages by executing the following:

    yay -S --needed - < aur-packages.txt

Packages under the 'common' directory should be installed first.
Followed by any specific packages under the corresponding directory.

## Install Dotfiles

Install ZIM framework before dotfiles: https://github.com/zimfw/zimfw/blob/master/README.md

The installation scripts are located under `/scripts`.
Run the script corresponding to the relevant setup.

## Services To Enable


### System Services

    sudo systemctl enable service

- tlp
- rslsync

### User Services

    systemctl --user enable service

- mpd

## Common Notes

- Configure network through command line networkmanager
- Install libmpdclient, before polybar
- Copy polybar fonts to /usr/share/fonts
- Update mirrors with Reflector
- Configure Neovim using python and ruby
- Install lsd next-gen ls command
- Fix blank android studio bug - install wmname and run 'wmname LG3D'
- Setup bumblebee so that GPU can be toggled
- Add acpi_rev_override=1 to kernel params
