#!/bin/bash

function entries() {
  echo hide
  echo show
  echo stack
  echo tab
  echo splith
  echo splitv
}

# if [[ -z "$@" ]]; then
  # entries | i3menu -a window -i l
# else
  # wmctrl -r `xdotool getwindowfocus` -N ttt
  # bash -c $@
# fi

selections=`entries | i3menu -a window -i l --theme dark`

[ "$selections" = "" ] && exit

case $selections in

  hide)
    wmctrl -r :ACTIVE: -N hidden
    ;;
  show)
    wmctrl -r :ACTIVE: -N show
    ;;
  stack)
    i3-msg layout stacking
    ;;
  tab)
    i3-msg layout tabbed
    ;;
  splith)
    i3-msg layout splith
    ;;
  splitv)
    i3-msg layout splitv
    ;;
  minimize)
    wmctrl -r `xdotool getwindowfocus` -N mini
    ;;

  *)
    echo -n "unknown"
    ;;
esac
