#!/usr/bin/python

import threading
import time

#global globalvar

exitFlag = 0

class myThread (threading.Thread):
   def __init__(self, threadID, name, counter):
      threading.Thread.__init__(self)
      self.threadID = threadID
      self.name = name
      self.counter = counter
   def run(self):
      print "Starting " + self.name
      incrloop(self.name, 10, self.counter)
      print "Exiting " + self.name

def incrloop(threadName, counter, delay):
   while counter:
      if exitFlag:
         threadName.exit()
      time.sleep(delay)
      global globalvar += 1
      #print "%s: %s" % (threadName, time.ctime(time.time()))
      counter -= 1

globalvar = 0

# Create new threads
thread1 = myThread(1, "Thread-1", 1)
thread2 = myThread(2, "Thread-2", 2)

# Start new Threads
thread1.start()
thread2.start()

print "Exiting Main Thread"

print "GLOBALVAR = " 
