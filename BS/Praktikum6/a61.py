import mmap
import os
import subprocess

me = os.getpid()

print(">>> Start")
subprocess.run(["ps", "-p", str(me), "-o", "%mem"])
subprocess.run(["vmmap", str(me)])

subprocess.run(["mkfile", "1g", "xxl"]) #fallocate -l

print("\n>>> Large file created")
subprocess.run(["ps", "-p", str(me), "-o", "%mem"])
subprocess.run(["vmmap", str(me)])

with open('xxl', 'r+b') as f:
	mm = mmap.mmap(f.fileno(), 0)
	print("\n>>> File MMapped")
	subprocess.run(["ps", "-p", str(me), "-o", "%mem"])
	subprocess.run(["vmmap", str(me)])
	for _ in range(10631107):
		mm.write(b"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA\n")
	print("\n>>> MMap Writing complete")
	subprocess.run(["ps", "-p", str(me), "-o", "%mem"])
	
	subprocess.run(["vmmap", str(me)])
	mm.close()
	
print("\n>>> MMap closed")
subprocess.run(["ps", "-p", str(me), "-o", "%mem"])
subprocess.run(["vmmap", str(me)])
#subprocess.run(["vmmap", str(me)])