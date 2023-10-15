import signal
import sys

"""FUNCTION
Catch user interrupt (ctrl + c).

sig = The type of signal, that should be catched.
frame = The function that should be executed.
"""
def signal_handler(sig, frame):
    print("\nCatched keyboard interrupt, exit programm!")

    try:
        print("Do things before leaving")

    except:
        print("Error while leaving ...")
    
    sys.exit(1)

# catch user interrupt (ctrl + c)
signal.signal(signal.SIGINT, signal_handler)

