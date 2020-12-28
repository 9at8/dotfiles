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

blue; echo "Installing base packages ..."; dim

# Try to install everything at once
yes | sudo pacapt -S (cat ./base.txt)

# Install one at a time if something errors out
if test $status = 0
    green; echo "	done"; dim
else
    red; echo "	failed"; dim
    blue; echo "Installing base packages one at a time ..."; dim

    for pkg in (cat ./base.txt)
        yes | sudo pacapt -S $pkg

        if test $status != 0
            red; echo "$pkg	failed"; dim
        end
    end
end

# Install aur packages

blue; echo "Installing aur packages ..."; dim
yes | yay --nocleanmenu --nodiffmenu --noeditmenu --noremovemake -S (cat ./aur.txt)

set_color normal

popd

