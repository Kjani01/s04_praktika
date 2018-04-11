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

# BEOBACHTUNGEN:
# Die globale Variable ist in allen Versuchen 0. Dies ist überraschend, weil die globale Variable nicht threadsicher ist.
# Wahrscheinlich ist die Arbeit in der Thread-Schleife derart trivial, dass sie bereits abgeschlossen ist, bevor der nächste Thread die Gelegenheit hat, zu starten
# Sicherlich wären auf langsameren Systemen deutliche Unterschiede bei verschiedenen Testläufen zu beobachten, bei denen alle Werte zwischen -5000 und 5000 verteilt sind.
# Dies lässt sich simulieren, indem die Anzahl der Wiederholungen in der Thread-Schleife erhöht werden. Ein Wert von 1000000 war in unseren Testläufen dafür auf unserem System ausreichend.
