def main():

	file = open("/etc/passwd", "r")

	for line in file:
		user, password, uid, gid, uidinfo, home, shell = line.split(":")
		print "USER " + user + " UID " + uid

	file.close()

if __name__ == "__main__":
	main()
