#!/bin/bash
#
# Tiny script to randomly select a song from the MPD database and play it. shuf is part of coreutils.
# Commands separated by a ‘;’ are executed sequentially; the shell waits for each command to terminate in tur# n.The return status is the exit status of the last command executed.
 mpc listall | shuf -n 1 | mpc add; mpc play
