import threading
import time

def runThread():
    print("Start thread!")
    time.sleep(3)

threads = []

# run 4 threads parallel
for i in range(0,4,1):
    thread = threading.Thread(target=runThread)
    threads.append(thread)
    thread.start()

# wait for threads to finish
for thread in threads:
    thread.join()

import os
import random

class runThreadCommand(threading.Thread):
    def __init__(self, command):
        threading.Thread.__init__(self)
        self.command = command
 
    def run(self):
        print ("Running " + str(self.command))
        os.system(self.command)


# run max 3 threads for elements in array
allCommands = ["sleep 4", "sleep 4", "sleep 3", "sleep 6", "sleep 2", "sleep 5"]

while allCommands:
    if (threading.active_count() <= 3):
        randInd = random.randint(0,len(allCommands)-1)
        currentThread = runThreadCommand(allCommands[randInd])
        del(allCommands[randInd])
        currentThread.start()

# wait for threads to finish
while(threading.active_count() != 1):
    print("Wait")
    os.system("sleep 1")

print("Finish")

