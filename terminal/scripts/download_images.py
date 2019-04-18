from bs4 import BeautifulSoup
import urllib.request
import re
import sys

# How to use
# ----------

# This script is to be called by a second bash script that will call wget on the returned list
# of found media. If you're using zsh simply add the following script to .zshrc
# imgdl() {
#     if [ ! -d "~/Downloads/imgdl" ]; then
#         mkdir ~/Downloads/imgdl;
#     fi
#     rm -rf ~/Downloads/imgdl/*;
#     cd ~/Downloads/imgdl/;
#     python3.6 ~/Documents/scripts/download_images.py $1 | xargs wget;  # Path to script
#     gthumb .                                # Image viewer
# }
# This script will download all then media this script finds and donwloads them to them folder
# specified.

assert len(sys.argv) == 2, "Invalid number of arguments"
url = sys.argv[1]
req = urllib.request.Request(url, headers={'User-Agent' : "Magic Browser"})
con = urllib.request.urlopen( req )
html = BeautifulSoup(con.read(), "html.parser")

img_list = []
for a in html.find_all("a", {"href":re.compile("([-\w]+\.(?:jpg|gif|png|webm))")}):
    img_list.append(str.replace(a["href"], "//", ""))

print("\n".join(set(img_list)))
