#!/bin/bash
# use predefined variables to access passed arguments
#echo arguments to the shell
#echo $1 $2 $3 ' -> echo $1 $2 $3'

# We can also store arguments from bash command line in special array
#args=("$@")
#echo arguments to the shell
#echo ${args[0]} ${args[1]} ${args[2]} ' -> args=("$@"); echo ${args[0]} ${args[1]} ${args[2]}'

#use $@ to print out all arguments at once
#echo $@ ' -> echo $@'

# use $# variable to print out
# number of arguments passed to the bash script
#echo Number of arguments passed: $# ' -> echo Number of arguments passed: $#'


tput setaf 1;
echo '*---* Files *---*'
tput setaf 2;
#files
echo 'md5sum [file]                                                             ;; Hash a file'
echo 'xxd [file]                                                                ;; View hex'
echo 'scp [file, -r folder] [user@IP:dir]                                       ;; Secure file transfer'
echo 'chmod [u+x] [file, -R folder]                                             ;; Give run as program permission'
echo 'tar -xvf [file.tar.*]                                                     ;; Untar that motherfucker'
echo 'zip [-r name.zip] folder/file                                             ;; Zip a file or folder'
echo 'unzip [file.zip] [-d destination]                                         ;; Unzip a .zip'
echo 'rsync [-r source/ destination]                                            ;; Rapid file transfer'
echo 'source [file]                                                             ;; Reload configuration file'
echo 'gpg -c [file]                                                             ;; Encrypt file with a password'
echo 'gpg [.gpg file]                                                           ;; Decrypt gpg encrypted file'
echo 'ffmpeg -i [file] -an -vcodec copy [output file]                           ;; Remove audio from video'
echo 'ffmpeg -i [file] -vcodec [vp8 / mp4] -crf 20 [output.codec]               ;; Reduce video Xfile size'
tput setaf 1;
echo '*---* Networking *---*'
#network
tput setaf 2
echo 'arp-scan [--interface=device --localnet]                                  ;; Scan LAN for connected devices'
echo 'nmap [-sP] [IP/24]                                                        ;; Scan LAN for connected devices'
echo 'ifconfig [--interface] [up]                                               ;; Turn on wireless card'
echo 'wpa_passphrase [myrouter] [mypassphrase] > wpa.conf                       ;; Generate WPA connection file'
echo 'wpa_supplicant [--help]                                                   ;; List available wireless drivers'
echo 'wpa_supplicant -D[driver] -i[device] -c[/path/to/config]                  ;; Connect to WPA network'
echo 'iwlist [wireless device] scan                                             ;; Scan for broadcasting routers'
echo 'iwconfig [wireless device] [essid] [NETWORK_ID [key or --] [WIRELESS_KEY] ;; Connect to WEP network'
echo 'tcpdump -i [interface] -A "port #"                                        ;; Capture network packets'
echo 'netstat -plunt                                                            ;; Port scan localhost'
echo 'youtube-dl --extract-audio --audio-format mp3 [video URL]                 ;; Download youtube video as mp3'
echo 'netstat -lntu                                                             ;; List open ports'
tput setaf 1;
echo '*---* Administrative *---*'
#administrative
tput setaf 2

echo 'ldconfig [-p] | grep [libsomething]                                       ;; Search for installed libs'
echo 'namei -l [path]                                                           ;; See folder owners and permissions'
echo 'cat /var/log/Xorg.0.log                                                   ;; See system specs'
echo 'fdisk -l                                                                  ;; List all storage drives'
echo 'ssh-keygen -t rsa                                                         ;; Generate new ssh key pair (.pub for public)'
echo 'du -a                                                                     ;; List disk space used by files'
echo 'ps aux                                                                    ;; Snapshot of all current processes'
