import threading
a = 0

def threadinc(_, amount):
    global a
    for x in range(0, 1000):
        a += amount

threads = []
for i in range(0, 10):
    amount = 1 - 2 * (i % 2) #1 on even, -1 on odd i
    t = threading.Thread(target=threadinc, args=(i, amount))
    t.name = "Thread No. " + str(i)
    threads.append(t)
    t.start()

for t in threads:
    t.join()
    print(t.name, " joined.")

print ("===\nValue of global variable: ", a)

