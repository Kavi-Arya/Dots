#!/bin/bash

dark ()
{
  rm -rf $HOME/.config/awesome/rc.lua
  rm -rf $HOME/.config/kitty/kitty.conf
  cp -r $HOME/.config/awesome/rc.lua-dark $HOME/.config/awesome/rc.lua 
  cp -r $HOME/.config/kitty/kitty-dark.conf $HOME/.config/kitty/kitty.conf
  pkill kitty
  echo 'awesome.restart()' | awesome-client
}

light ()
{
  rm -rf $HOME/.config/awesome/rc.lua
  rm -rf $HOME/.config/kitty/kitty.conf
  cp -r $HOME/.config/awesome/rc.lua-light $HOME/.config/awesome/rc.lua 
  cp -r $HOME/.config/kitty/kitty-light.conf $HOME/.config/kitty/kitty.conf
  pkill kitty
  echo 'awesome.restart()' | awesome-client
}

case "$1" in
  dark)   dark ;; 
  light)  light ;; 
esac
