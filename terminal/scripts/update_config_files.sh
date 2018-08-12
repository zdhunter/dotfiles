#!/bin/bash

set +e
backup_dir="/home/$USER/Documents/config_backup"

echo "Updating files"

echo "EMACS"
mv -u "${backup_dir}/emacs/.emacs" ~/.emacs
mv -u "${backup_dir}/emacs/.emacs.d" ~/.emacs.d

echo "Terminal related files..."
mv -u "${backup_dir}/terminal/.Xresources" ~/.Xresources
mv -u "${backup_dir}/terminal/.tmux.conf" ~/.tmux.conf
mv -u "${backup_dir}/terminal/.zshrc" ~/.zshrc
mv -u "${backup_dir}/terminal/.urxvt" ~/.urxvt
mv -u "${backup_dir}/terminal/.fonts" ~/.fonts
mv -u "${backup_dir}/terminal/.weechat" ~/.weechat
mv -u "${backup_dir}/terminal/.screenlayout" ~/.screenlayout

echo "MPD & NCMPCPP..."
mv -u "${backup_dir}/terminal/.mpd" ~/.config/mpd
mv -u "${backup_dir}/terminal/.ncmpcpp" ~/.ncmpcpp

echo " Awesome WM..."
mv -u "${backup_dir}/WM/rc.lua" ~/.config/awesome/rc.lua
mv -u "${backup_dir}/WM/themes" ~/.config/awesome/themes/
echo "Update complete"
