import re
import optparse
import os
import sqlite3

def show_downloads(db):
    db_conn = sqlite3.connect(db)
    c = db_conn.cursor()
    c.execute('SELECT name, source, datetime(endTime/1000000,\
    \'unixepoch\') FROM moz_downloads;')

    print("\n FILES DOWNLOADED \n")
    for row in c:
        print("File: " + str(row[0]) + "\n downloaded from: " + str(row[0]) + "\n at: " + str(row[2]))


def show_cookies(db):
    try:
        conn = sqlite3.connect(db)
        c.execute("SELECT host, name, value FROM moz_cookies")
        print("\n FOUND COOKIES \n")
        for row in c:
            host = str(row[0])
            name = str(row[1])
            value = str(row[2])
            print ("Host: " + host + "\n cookie: " + name + "\n value: " + value)

    except Exception, e:
        if "encrypted" in str(e):
            print ("Error reading the cookie database\n")
            print ("Upgrade the python-sqlite3 library\n")

def show_history(db):
    try:
        db_conn = sqlite3.connect(db)
        c = db_conn.cursor()
        c.execute("select url, datetime(visit_date/1000000, \
	'unixepoch') from moz_places, moz_historyvisits \
	where visit_count > 0 and moz_places.id==\
	moz_historyvisits.place_id;")
        print ("\n BROWSING HISTORY \n")
        for row in c:
            url = str(row[0])
            date = str(row[1])
            print ("URL: " + url + "\n date: " + date)


