# Server program
import socket
import os
from struct import *

HOST = 'localhost'        
PORT = 11111        # Serverport

s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
s.bind((HOST, PORT))

while True:
	s.listen(1)
	conn, addr = s.accept()
	res = os.fork()
	if(res == 0):	# Child-process
		print("Verbindung zu Client aufgebaut")
		while True:
			option = conn.recv(4)
			
			if(option == "exit"):
				conn.close()
				print("Verbindung zu Client beendet")
				break
			
			if(option == "adds"):
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

				if(option == "addi"):
					result = int(first) + int(second)
					conn.send(pack('i',result))
			
				if(option == "mult"):
					result = int(first) * int(second)
					conn.send(pack('i',result))





	if(res == 0):	# Connection closed -> child-process can die
		break



