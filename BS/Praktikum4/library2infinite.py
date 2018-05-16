#!/usr/bin/python3

import sys, threading, time

def study(studentNo, delay):
	global studentsstudying
	count = 0
	while (1):
		with book1:
			with book2:
				with book3:
					with studentslock:
						studentsstudying += 1
					time.sleep(delay)
					count += 1
					with studylock:
						studytimes[studentNo] = count
					#print("Student", studentNo, "studied for", count, "seconds")
					with studentslock:
						studentsstudying -= 1

print("LIBRARY\n=======")
numstudents = int(sys.argv[1])
readingtime = int(sys.argv[2])
print(numstudents, "students reading for", readingtime, "seconds each.")


book1 = threading.Semaphore(3)
book2 = threading.Semaphore(2)
book3 = threading.Semaphore(2)
studentslock = threading.Semaphore(1)
studentsstudying = 0
studylock = threading.Semaphore(1)
studytimes = []

threads = []
#try:
for i in range(0, numstudents):
	studytimes.append(0)
	t = threading.Thread(target=study, args=(i, readingtime))
	t.name = "Student #" + str(i)
	threads.append(t)
	t.start()
#except:
#	print ("Error: unable to start thread")

while 1:
	print("Students having all 3 books:", studentsstudying, " // Study time table:", studytimes)
	time.sleep(1)
	pass
