#!/usr/bin/env fish

function dim
    set_color -d white
end

function blue
    set_color normal
    set_color blue
end

function green
    set_color normal
    set_color green
end

function red
    set_color normal
    set_color red
end

dim

pushd (dirname (status --current-filename))

blue; echo "Stowing configs ..."; dim

for config in (cat ./install.txt)
    stow -t ~ $config
    
    if test $status = 0
        green; echo "	$config	done"; dim
    else
        red; echo "	$config	failed"; dim
    end
end

blue; echo "Setting wallpaper to update every 30 mins ..."; dim
crontab ./wallpaper.cron

if not contains (realpath ~/.local/bin) $PATH
    blue; echo "Adding ~/.local/bin to PATH ..."; dim
    set -U fish_user_paths (realpath ~/.local/bin) $fish_user_paths
end

set_color normal

popd

