from threading import Thread
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

thread1 = Thread( target=threadinc, args=("Thread-1", ) )
thread2 = Thread( target=threadinc, args=("Thread-2", ) )
thread3 = Thread( target=threadinc, args=("Thread-3", ) )
thread4 = Thread( target=threadinc, args=("Thread-4", ) )
thread5 = Thread( target=threadinc, args=("Thread-5", ) )
thread6 = Thread( target=threaddec, args=("Thread-6", ) )
thread7 = Thread( target=threaddec, args=("Thread-7", ) )
thread8 = Thread( target=threaddec, args=("Thread-8", ) )
thread9 = Thread( target=threaddec, args=("Thread-9", ) )
thread10 = Thread( target=threaddec, args=("Thread-10", ) )
thread1.start()
thread2.start()
thread3.start()
thread4.start()
thread5.start()
thread6.start()
thread7.start()
thread8.start()
thread9.start()
thread10.start()

thread1.join()
print "Thread Nr. 1 joined"
thread2.join()
print "Thread Nr. 2 joined"
thread3.join()
print "Thread Nr. 3 joined"
thread4.join()
print "Thread Nr. 4 joined"
thread5.join()
print "Thread Nr. 5 joined"
thread6.join()
print "Thread Nr. 6 joined"
thread7.join()
print "Thread Nr. 7 joined"
thread8.join()
print "Thread Nr. 8 joined"
thread9.join()
print "Thread Nr. 9 joined"
thread10.join()
print "Thread Nr. 10 joined"

print "GLOBALVAR ", a
