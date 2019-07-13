#!/bin/bash

SCRIPT_PATH="$( cd "$(dirname "$0")" ; pwd -P )"

deploy_to_target() {

  local BACKUP_DIR="$HOME/.backup/"
  local TARGET_DIR=`dirname $2`
  local TARGET=`basename $2`
  
  echo "Linking : $2 => $SCRIPT_PATH/$1"
  
  # if the .config_backup folder doesn't exist, create it
   
  if [ ! -d "$BACKUP_DIR" ]; then
    echo "   $BACKUP_DIR is missing. Creating it ... "
    mkdir $BACKUP_DIR && echo "     Success"
  fi
  
  if [ -L $2 ]; then
    echo "   Old $2 is a symbolic link. Removing it"
    rm -f $2 
  fi

  if [ -d $2 ]; then
    echo "   Old $2 is a directory. Moving it to backup folder"
    mv -f $2 $BACKUP_DIR 
  fi

  if [ -e $2 ]; then
    echo "   Old $2 is a file. Moving it to backup folder"
    mv -f $2 $BACKUP_DIR 
  fi

  cd $TARGET_DIR
  ln -s "$SCRIPT_PATH/$1" $TARGET            

}

deploy_to_target "dunst" "$HOME/.config/dunst"
deploy_to_target "i3" "$HOME/.config/i3"
deploy_to_target "i3scripts" "$HOME/.i3scripts"
deploy_to_target "i3blocks/i3blocks.conf" "$HOME/.i3blocks.conf"
deploy_to_target "home_files/xsession" "$HOME/.xsession"
deploy_to_target "home_files/xinitrc" "$HOME/.xinitrc"
deploy_to_target "urxvt/Xresources" "$HOME/.Xresources"
deploy_to_target "kitty" "$HOME/.config/kitty"

[ ! -d $HOME/.wallpapers ] && mkdir $HOME/.wallpapers

