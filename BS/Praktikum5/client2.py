# client program
import socket
from struct import *

HOST = 'localhost'
PORT = 12345

print "CLIENT\n======"
s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
s.connect((HOST, PORT))
print "Hello, server!"


while True:
	selected = raw_input("\nYour options are:\nADD - MUL - CONCAT - CLIENT-ENDE\n> ")
	selected = selected.upper()
	
	if(selected == "CONCAT"):
		s.send(pack('i',len(selected)))
		s.send(selected)
		
		first = raw_input("First string:\t")
		second = raw_input("Second string:\t")
		s.send(pack('i',len(first)))
		s.send(first)
		s.send(pack('i',len(second)))
		s.send(second)
		length = unpack('i',s.recv(4))[0]
		result = s.recv(length)
		print "Concatinated: " + result
		
		
	elif (selected == "ADD" or selected == "MUL"):
		s.send(pack('i',len(selected)))
		s.send(selected)
		
		first = raw_input("First integer:\t")
		second = raw_input("Second integer:\t")
		s.send(pack('i',int(first)))
		s.send(pack('i',int(second)))
		result = unpack('i',s.recv(4))[0]
		print "Integer result: " + str(result)
	
	elif (selected == "CLIENT-ENDE"):
		s.send(pack('i',len(selected)))
		s.send(selected)
		print "Goodbye, server!"
		break;
	
	else:
		print "Unknown command"
		continue

s.close()