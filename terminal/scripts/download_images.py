from bs4 import BeautifulSoup
import urllib.request
import re

import sys
assert len(sys.argv) == 2, "Invalid number of arguments"
url = sys.argv[1]
req = urllib.request.Request(url, headers={'User-Agent' : "Magic Browser"})
con = urllib.request.urlopen( req )
html = BeautifulSoup(con.read(), "html5lib")

img_list = []
for a in html.find_all("a", {"href":re.compile("([-\w]+\.(?:jpg|gif|png|webm))")}):
    img_list.append(str.replace(a["href"], "//", ""))

print("\n".join(set(img_list)))
