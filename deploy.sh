#!/bin/bash

SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"
echo $SCRIPTPATH 

[ -d $HOME/.config/dunst ] && mv $HOME/.config/dunst $HOME/.backup_dunst
[ -d $HOME/.config/i3 ] && mv $HOME/.config/i3 $HOME/.backup_configi3
[ -d $HOME/.i3 ] && mv $HOME/.i3 $HOME/.backup_i3
[ -d $HOME/.i3scripts ] && mv $HOME/.i3scripts $HOME/.backup_i3scripts
[ -f $HOME/.i3bocks.conf ] && mv $HOME/.i3blocks.conf $HOME/.backup_i3blocks
[ -f $HOME/.xsession ] && mv $HOME/.xsession $HOME/.backup_xsession
[ -f $HOME/.xinitrc ] && mv $HOME/.xinitrc $HOME/.backup_xinitrc
[ -f $HOME/.Xdefaults ] && mv $HOME/.Xdefaults $HOME/.backup_Xdefaults


[ -L $HOME/.config/dunst ] && rm $HOME/.config/dunst
[ -L $HOME/.config/i3 ] && rm $HOME/.config/i3
[ -L $HOME/.i3 ] && rm $HOME/.i3 
[ -L $HOME/.i3scripts ] && rm $HOME/.i3scripts
[ -L $HOME/.i3blocks.conf ] && rm $HOME/.i3blocks.conf 
[ -L $HOME/.xsession ] && rm $HOME/.xsession 
[ -L $HOME/.xinitrc ] && rm $HOME/.xinitrc 
[ -L $HOME/.Xdefaults ] && rm $HOME/.Xdefaults 

ln -s "$SCRIPTPATH/i3" $HOME/.config/i3            # FIXME BUG
ln -s "$SCRIPTPATH/dunst" $HOME/.config/dunst      # FIXME BUG
ln -s "$SCRIPTPATH/i3scripts" $HOME/.i3scripts     # FIXME BUG

ln -s "$SCRIPTPATH/i3blocks/i3blocks.conf" $HOME/.i3blocks.conf
ln -s "$SCRIPTPATH/home_files/xsession" $HOME/.xsession
ln -s "$SCRIPTPATH/home_files/xinitrc" $HOME/.xinitrc
ln -s "$SCRIPTPATH/home_files/Xdefaults" $HOME/.Xdefaults

[ ! -d $HOME/.wallpapers ] && mkdir $HOME/.wallpapers


