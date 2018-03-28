import os

def child():
	res = os.fork()
	return res

def printChild():
	for x in range(200):
		print ("Kind mit PID=", os.getpid())

def main():
	res = child()
	if res != 0:
		pid1 = res
	else:
		printChild()
		return

	res = child()
	if res != 0:
		pid2 = res
	else:
		printChild()
		return	
		
	res = child()
	if res != 0:
		pid3 = res
	else:
		printChild()
		return

	for x in range(200):
		print(pid1, pid2, pid3)

main()
