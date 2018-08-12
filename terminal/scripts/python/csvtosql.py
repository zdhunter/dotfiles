import csv

f = open("last.csv",encoding='utf-8')
counter = 0
for row in csv.reader(f):
    print(row[0])
    print(row[1])
    print(row[2])
    print(row[3])
    print(row[4])
    print(row[5])
    counter += 1
    print("Row: %d" % counter + "\n")
