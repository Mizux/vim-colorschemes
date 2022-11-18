#!/usr/bin/env sh
set -eux

# Check wget is available
command -v wget

#wget -N --trust-server-name https://unpkg.com/dat.gui/build/dat.gui
wget -N --trust-server-name https://unpkg.com/dat.gui/build/dat.gui.module
wget -N --trust-server-name https://unpkg.com/dat.gui/build/dat.gui.module.js.map
