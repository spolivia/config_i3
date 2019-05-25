#!/bin/bash

[ -d ~/.config/dunst ] && mv ~/.config/dunst ~/.backup_dunst
[ -d ~/.config/i3 ] && mv ~/.config/i3 ~/.backup_configi3
[ -d ~/.i3 ] && mv ~/.i3 ~/.backup_i3
[ -d ~/.i3scripts ] && mv ~/.i3scripts ~/.backup_i3scripts
[ -f ~/.i3bocks.conf ] && mv ~/.i3blocks.conf ~/.backup_i3blocks
[ -f ~/.xsession ] && mv ~/.xsession ~/.backup_xsession
[ -f ~/.xinitrc ] && mv ~/.xinitrc ~/.backup_xinitrc
[ -f ~/.Xdefaults ] && mv ~/.Xdefaults ~/.backup_Xdefaults


[ -L ~/.config/dunst ] && rm ~/.config/dunst
[ -L ~/.config/i3 ] && rm ~/.config/i3
[ -L ~/.i3 ] && rm ~/.i3 
[ -L ~/.i3scripts ] && rm ~/.i3scripts
[ -L ~/.i3blocks.conf ] && rm ~/.i3blocks.conf 
[ -L ~/.xsession ] && rm ~/.xsession 
[ -L ~/.xinitrc ] && rm ~/.xinitrc 
[ -L ~/.Xdefaults ] && rm ~/.Xdefaults 



