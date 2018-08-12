/*  ----------------------------- spawnterm ------------------------------- */
#!/bin/bash
REC=$(xrectsel) || exit 1
 
IFS=' ' read -r W H X Y <<< "$REC"
 
# Try calculating the terminal width/height
# based on font size
 
if [ ! "$W" -eq "0" ]; then
    let X=$X-1
    let Y=$Y-0
    let W=$(( $W / 7 ))-2
    let H=$(( $H / 15 ))-1
 
    urxvt -g $W"x"$H"+"$X"+"$Y &
    #sleep .2
    #sh ~/scripts/snap.grid $(xdotool getactivewindow)
fi
exit 0
