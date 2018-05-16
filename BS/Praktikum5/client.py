# client program
import socket
from struct import *

HOST = 'localhost'    # The remote host
PORT = 11111            # The same port as used by the server

s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
s.connect((HOST, PORT))
print("----------------------------------")
print("Addition zweier Zahlen: \t addi")
print("Addition zweier Strings: \t adds")
print("Multiplikation zweier Zahlen: \t mult")
print("Beenden dieses Programmes: \t exit")
print("----------------------------------")

while True:
 	option = raw_input("Welcher option?")
	if(option != "addi" and option != "adds" and option != "mult" and option != "exit"):
		print("Fehler in der Eingabe-option existiert nicht")
		continue
	s.send(option)

	if(option == "exit"):
		print("Servus");
		break;
		
	first = raw_input("Erstes Argument:")
	second = raw_input("Erstes Argument:")
	
	if(option == "adds"):
		s.send(pack('i',len(first)))
		s.send(first)
		s.send(pack('i',len(second)))
		s.send(second)
		length = unpack('i',s.recv(4))[0]
		result = s.recv(length)
	else:			
		s.send(pack('i',int(first)))
		s.send(pack('i',int(second)))
		result = unpack('i',s.recv(4))[0]


	print("Ergebnis:")
	print(result)


s.close()


