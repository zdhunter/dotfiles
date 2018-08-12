#!/bin/bash

set +e

backup_dir="/home/$USER/Documents/rice_backup/"

echo "Backing data to: ${backup_dir} "
echo "Creating folders..."

# MAKE DIRECTORIES
mkdir -p "${backup_dir}"
mkdir -p "${backup_dir}/emacs/"
mkdir -p "${backup_dir}/emacs/.emacs.d"
mkdir -p "${backup_dir}/terminal/"

echo "Backing files up..."

# EMACS
echo "EMACS..."
cp  ~/.emacs "${backup_dir}/emacs/"
cp  ~/.emacs.d/my-packages.el "${backup_dir}/emacs/.emacs.d"
cp  ~/.emacs.d/x86-lookup-pdf.pdf "${backup_dir}/emacs/.emacs.d"
cp  -r ~/.emacs.d/custom/ "${backup_dir}/emacs/.emacs.d"
cp  -r ~/.emacs.d/irony/ "${backup_dir}/emacs/.emacs.d"
cp  -r ~/.emacs.d/semanticdb/ "${backup_dir}/emacs/.emacs.d"
cp  -r ~/.emacs.d/snippets/ "${backup_dir}/emacs/.emacs.d"

# TERMINAL AND COLORS
echo "Terminal related files..."
cp  ~/.Xresources "${backup_dir}/terminal/"
cp  ~/.tmux.conf  "${backup_dir}/terminal/"
cp  ~/.zshrc  "${backup_dir}/terminal/"
cp  -r ~/.urxvt/  "${backup_dir}/terminal/"
cp  -r ~/.weechat/  "${backup_dir}/terminal/"
cp  -r ~/.fonts  "${backup_dir}/terminal/"
cp  -r ~/Documents/scripts/ "${backup_dir}/terminal/"

# MPD & NCMPCPP
echo "MPD & NCMPCPP..."
cp  -r ~/.config/mpd/  "${backup_dir}/terminal/"
cp  -r ~/.ncmpcpp/  "${backup_dir}/terminal/"
cp  -r ~/.screenlayout/  "${backup_dir}/terminal/"

# AWESOME WM
echo "Awesome WM..."
cp  -r ~/.config/awesome/  "${backup_dir}/"


echo "Backup complete."

cd $backup_dir
inside_git_repo="$(git rev-parse --is-inside-work-tree 2>/dev/null)"

if [ "$inside_git_repo" ]; then
    echo "Git repository found."
    echo "Updating local git repository..."
    git add .
    git commit -m "$(date +%F_%T)"
    git checkout
else
    echo "Git repository NOT found."
    echo "Creating a new git repository..."
    echo "Updating new local git repository..."
    git init
    git add .
    git commit -m "$(date +%F_%T)"
    git checkout
fi


echo "Backup done."
