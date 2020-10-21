#!/bin/sh
filename=$(date '+%y-%m-%d %X')

cd ~/Screenshots

wholeScreen() {
  import -window root "$filename.png"
  xclip -selection clipboard -t image/png -i "$filename.png"
  dunstify "Whole screen captured and copied to clipboard"
}


selectArea() {
  import "$filename.png"
  xclip -selection clipboard -t image/png -i "$filename.png"
  dunstify "Area captured and copied to clipboard"
}

case "$1" in
  --screen)
      wholeScreen
      ;;
  *)
      selectArea
      ;;
esac
