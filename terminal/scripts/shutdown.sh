#!/bin/sh

echo -n "
    `lsb_release -sir | sed 'N;s/\n/ /'` `hostname`

    \033[1;30mUptime \033[0;33m`uptime | sed 's/^.*up\s*//;s/,.*$//'`\033[0m




    \033[1;30mType \033[0;31mS\033[1;30m to shutdown! \033[0;33mR\033[1;30m to reboot, \033[0;34mL\033[1;30m for logout: \033[0m\
"

read REPLY
clear

case $REPLY in

    s)
        echo -n "\n    Bye!"
        sleep 0.4
        sudo shutdown -h -P -t1 now
        exit
        ;;

    r)
        echo -n "\n    See you!"
        sleep 0.4
        sudo shutdown -r -t1 now
        exit
        ;;

    l)
        echo -n "\n    See you!"
        sleep 0.4
        openbox --exit
        exit

esac

echo -n "\n    Ops!"
sleep 0.2
