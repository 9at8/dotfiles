#!/usr/bin/env fish

pushd (dirname (status --current-filename))

for config in (cat ./install.txt)
    stow -D -t ~(logname || whoami) $config
end

popd

