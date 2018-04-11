import signal, os

def handler(signum, frame):
	print "Signal handler called with signal", signum
def handlerKill(signum, frame):
	print "ade du schoene welt!"
def handlerInt(signum, frame):
	print "das war wohl ctrl-c!"
def handlerQuit(signum, frame):
	print "ddddddddas wars, leute!!!!"


#signal.signal(signal.SIGALRM, handler)
signal.signal(signal.SIGTERM, handlerKill)
signal.signal(signal.SIGINT, handlerInt)
signal.signal(signal.SIGQUIT, handlerQuit)
while True:
	signal.alarm(5)



