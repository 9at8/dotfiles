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
    stow -t ~(logname || whoami) $config
    
    if test $status = 0
        green; echo "	$config	done"; dim
    else
        red; echo "	$config	failed"; dim
    end
end

set_color normal

popd

