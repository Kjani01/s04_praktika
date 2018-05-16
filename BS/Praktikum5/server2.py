# Server program
import os, socket
from struct import *

HOST = 'localhost'        
PORT = 12345

s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
s.bind((HOST, PORT))

print "SERVER\n======"

while (1):
	s.listen(1)
	conn, addr = s.accept()
	process = os.fork()
	if(process == 0):	# Child-process
		print "> Hello, client!"
		while True:
			length = unpack('i',conn.recv(4))[0]
			command = conn.recv(length)
			print "Command received: " + command
			
			if(command == "CLIENT-ENDE"):
				conn.close()
				print "> Goodbye, client!"
				break
			
			if(command == "CONCAT"):
				length = unpack('i',conn.recv(4))[0]
				first = conn.recv(length)
				length = unpack('i',conn.recv(4))[0]
				second = conn.recv(length)
				result = first + second
				conn.send(pack('i',len(result)))
				conn.send(result)
			else:
				first = unpack('i',conn.recv(4))[0]
				second = unpack('i',conn.recv(4))[0]

				if(command == "ADD"):
					result = int(first) + int(second)
					conn.send(pack('i', result))
			
				if(command == "MUL"):
					result = int(first) * int(second)
					conn.send(pack('i', result))





	if(process == 0):	# Connection closed -> child-process can die
		break



