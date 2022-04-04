#!/bin/env bash

# set background
bash $HOME/.config/qtile/scripts/.fehbg

# Kill if already running
killall -9 picom xfce4-power-manager ksuperkey dunst sxhkd eww

# Launch Conkeww
sed -i "s/colors\/color-.*/colors\/color-dracula.yuck\")/g" $HOME/.config/conkeww/eww.yuck
eww --config $HOME/.config/conkeww/ open conkeww-main

# start hotkey daemon
sxhkd &

# Launch notification daemon
dunst -config $HOME/.config/qtile/dunstrc &

# Enable Super Keys For Menu
ksuperkey -e 'Super_L=Alt_L|F1' &
ksuperkey -e 'Super_R=Alt_L|F1' &

# power manager and picom start
xfce4-power-manager &
picom --config $HOME/.config/qtile/picom.conf &

if [[ ! `pidof xfce-polkit` ]]; then
    /usr/lib/xfce-polkit/xfce-polkit &
fi

# replace neovim colorscheme
sed -i "s/theme =.*$/theme = \"chadracula\",/g" $HOME/.config/nvim/lua/custom/chadrc.lua

# change xfce4-terminal colorscheme
XFCE_TERM_PATH="$HOME/.config/xfce4/terminal"
cp "$XFCE_TERM_PATH"/colorschemes/dracula "$XFCE_TERM_PATH"/terminalrc

# change cava colorscheme
CAVA_PATH="$HOME/.config/cava"
cp "$CAVA_PATH"/colorschemes/dracula "$CAVA_PATH"/config
