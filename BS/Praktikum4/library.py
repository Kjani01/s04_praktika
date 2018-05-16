#!/usr/local/Cellar/python/3.6.4_4/bin/python3  
###linux: /usr/bin/python3

import sys, threading

def Job(i):#, stop_event):
    print
    print("Student", i, "starts learning ...")
    print
    #while((not stop_event.is_set()):
    #    pass
    print("Student", i, "is done.")

print("LIBRARY\n=======")
numstudents = int(sys.argv[1])
readingtime = int(sys.argv[2])
print(numstudents, "students reading for", readingtime, "seconds each.")

for i in range(0, numstudents):
    p = threading.Thread(target=Job, args=(i))#, stop_event))
    #p.daemon = True
    p.start()
#time.sleep(10)
#stop_event.set()
