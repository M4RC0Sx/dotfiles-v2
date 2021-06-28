#!/bin/bash

# Generate stow symlinks.
for file in *; do
    if [ -d "$file" ] && [[ "$file" != _* ]]; then
        echo "Generating $file symlinks via stow..."
        stow "$file"
    fi
done

# Generate X11 symlinks - sudo needed.
sudo mkdir -p /etc/X11/xorg.conf.d
sudo ln -sf ./_X11/xorg.conf.d/* /etc/X11/xorg.conf.d/

# Generate JRE profile file - sudo needed.
sudo mkdir -p /etc/profile.d
sudo ln -sf ./_profile.d/jre.sh /etc/profile.d

