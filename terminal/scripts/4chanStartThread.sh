#!/bin/bash
SCREENSHOT_COMMAND="/home/gentoo/bin/nircmdc.exe savescreenshot"
FILENAME_OF_SCREENSHOT_NIX="/cygdrive/c/Users/gentoo/Pictures/scrots/Untitled.png"
FILENAME_OF_SCREENSHOT_WIN="C:\\Users\\gentoo\\Pictures\\scrots\\Untitled.png"
IMAGE_VIEWER="display.exe"
TMPCHALLENGEIMAGE="/tmp/challenge.jpg"
BROWSER_COMMAND="/cygdrive/c/Program\ Files\Nightly/firefox.exe"

BOARD_POST="http://sys.4chan.org/g/post"
BOARD_VIEW="http://boards.4chan.org/g/res"
NAME="GNU/#yADb95_~"
SUBJECT=""
EMAIL="neko"
PASSWORD="$RANDOM"
COMMENT="Refreshed page $RANDOM times, saw no desktop threads.  Posting a desktop thread using start_desktop_thread.sh"


TMP=`mktemp -t shitty.script.XXXX`
CHALLENGE=`curl http://www.google.com/recaptcha/api/challenge?k=6Ldp2bsSAAAAAAJ5uyx_lx34lJeEpTLVkP5k04qc | head -n 5 | tail -n 1 | awk '{print $3}' | awk "{gsub(/'|,/, \"\"); print}"`

#echo $CHALLENGE
curl http://www.google.com/recaptcha/api/image?c=$CHALLENGE -o $TMPCHALLENGEIMAGE
echo "Enter the captcha:"
$($IMAGE_VIEWER $TMPCHALLENGEIMAGE)&
read RESPONSE_TO_CHALLENGE


if [ `uname` = "CYGWIN_NT-6.1-WOW64" ]; then
    echo "WINDOWS SYSTEM DETECTED"
    taskkill /f /im $IMAGE_VIEWER
    $($SCREENSHOT_COMMAND $FILENAME_OF_SCREENSHOT_WIN)
else
    echo "LOONIX OR OS GAY OR BSD SYSTEM DETECTED"
    kill -9 pidof $IMAGE_VIEWER
    $($SCREENSHOT_COMMAND $FILENAME_OF_SCREENSHOT_NIX)
fi

curl -A tidus -F resto="$BOAD_POST" -F "name=$NAME" -F "email=$EMAIL" -F "sub=$SUBJECT" -F "com=$COMMENT" -F "upfile=@$FILENAME_OF_SCREENSHOT_NIX" -F "pwd=$PASSWORD" -F "mode=regist" -F "submit=submit" -F "recaptcha_response_field=$RESPONSE_TO_CHALLENGE" -F "recaptcha_challenge_field=$CHALLENGE" $BOARD_POST > $TMP

rm $TMPCHALLENGEIMAGE

if [ "$URL" = "" ]; then
    URL=`cat $TMP | egrep -o 'thread:0,no:[0-9]+' | egrep -o '[0-9]{4,}'`
    echo "posting in $BOARD_VIEW/$URL"
    nohup $(`BROWSER_COMMAND $BOARD_VIEW/$URL`) &
fi

rm -f $TMP
exit 0
