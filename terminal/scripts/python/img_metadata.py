# Quick python script that downlaods all found images in a given URL and scans for GPS exif meta data


import urllib.request  as urllib2
import optparse

from urllib.parse import urlsplit
from os.path import basename
from bs4 import BeautifulSoup
from PIL import Image
from PIL.ExifTags import TAGS

def scan_for_images(url):
    print("Scanning for images in: " + url)

    # Headers to simulate an internet browser
    user_agent = 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.0.7) Gecko/2009021910 Firefox/3.0.7'
    headers={'User-Agent':user_agent,}
    request = urllib2.Request(url, None, headers)
    # url_content = urllib2.urlopen(url).read()
    url_content = urllib2.urlopen(request)
    soup = BeautifulSoup(url_content, "lxml")
    img_tags = soup.findAll('img')

    return img_tags


def download_image(img_tag):
    try:
        print("Downloading image...")
        img_src = img_tag['src']
        img_content = urllib2.urlopen(img_src).read()
        img_file_name = basename(urlsplit(img_src)[2])

        img_file = open(img_file_name, 'wb')
        img_file.write(img_content)
        img_file.close()

        return img_file_name
    except:
        return ""

def test_for_exif(img_file_name):
    try:
        exif_data = {}
        img_file = Image.ope(img_file_name)
        info = img_file._getexif()

        if info:
            for (tag, value) in info.items():
                decoded = TAGS.get(tag, tag)
                exif_data['decoded'] = value

            exif_gps = exif_data["GPSInfo"]
            if exif_gps:
                print("" + img_file_name + " contains the following GPS data: " + exif_gps)
    except:
        pass

def main():
    parser = optparse.OptionParser('usage%prog' + "-u <target url>")
    parser.add_option('-u', dest='url', type='string', help = 'URL address to scan')
    (options, args) = parser.parse_args()

    url = options.url
    if url == None:
        print(parser.usage)
        exit(0)
    else:
        img_tags = scan_for_images(url)
        for img_tag in img_tags:
            img_file_name = download_image(img_tag)
            test_for_exif(img_file_name)

if __name__ == '__main__':
    main()


