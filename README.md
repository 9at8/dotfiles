# Dotfiles

- [fish shell](https://fishshell.com/) with [fisher](https://github.com/jorgebucaran/fisher) and some [nice plugins](./configs/fish/.config/fish/fish_plugins)
- [pacapt](https://github.com/icy/pacapt) package manager
- [i3](./configs/i3) + [plasma](./) setup
- [ssh config](./configs/ssh/.ssh/config) that I find really neat

## Quick install

Git clone this repo anywhere and run `./install.sh`

If you want to skip installing some configs or packages, modify [the config list](./configs/install.txt), [the base packages list](./packages/base.txt), or [the aur packages list](./packages/aur.txt). These files are just a list of configs/packages that the scripts install.

Note: The script asks for super user priviledges. That's expected because it needs to change login shell and install packages.

## Configs

All "dotfiles" are present under the `configs` directory. All of these are "installed" using GNU stow to the user's home directory.

## Packages

I use [pacapt](https://github.com/icy/pacapt) as my package manager. I have not tested this config on anything other than Manjaro, but it should theoretically work on other distros.

## i3 + Plasma

First of all, follow [this](https://userbase.kde.org/Tutorials/Using_Other_Window_Managers_with_Plasma) tutorial. Next, copying the [i3 config file](./configs/i3/.config/i3/config) should be enough. Note that my i3 config is very basic. I'm new to tiling WMs so, this might change in the near future.
