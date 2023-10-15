# check if script runs as root
if not os.geteuid() == 0:
    print("Please execute as root\n")
    exit (1)

