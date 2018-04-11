import signal, time

def handlerInt(signum, frame):
	print("Handler tut nichts.")

catchable_sigs = set(signal.Signals) - {signal.SIGKILL, signal.SIGSTOP, signal.SIGINT}
for sig in catchable_sigs:
	signal.signal(sig, print) 

signal.signal(signal.SIGINT,handlerInt)

while True:
	print ("aktiv")
	time.sleep(10)
