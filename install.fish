#!/usr/bin/env fish

function dim
    set_color -d white
end

function blue
    set_color normal
    set_color blue
end

dim

# Make fish the default shell
sudo chsh -s (which fish) (logname || whoami)

# Install pacapt
blue; echo "Installing pacapt ..."; dim
./pacapt.sh

# Install all packages
./packages/install.fish

# Install the configs
./configs/install.fish

set_color normal

