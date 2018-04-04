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
for i in range(0, 10):
    t = threading.Thread(target=threadinc, args=(i,))
    threads.append(t)
    t.start()

for t in threads:
    print("Thread No. ", t.getName(), " joined.")
    t.join()

print ("GLOBALVAR ", a)
