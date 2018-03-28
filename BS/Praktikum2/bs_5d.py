import threading
import time
a = 0

def threadinc(threadname):
    global a
    for x in range(0, 1000):
        a += 1

def threaddec(threadname):
    global a
    for x in range(0, 1000):
        a -= 1

threads = []
for i in range(0, 5):
    t = threading.Thread(target=threadinc, args=(i,))
    threads.append(t)
    t.start()

for t in threading.enumerate():
    #if t is main_thread:
        #continue
    print "Thread No. %s joined.", t.getName()
    t.join()

print "GLOBALVAR ", a
