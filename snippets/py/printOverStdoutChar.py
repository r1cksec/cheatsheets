#!/usr/bin/env python3

import sys
import time

print("1/10")
time.sleep(1)

# remove first char of last printed line
sys.stdout.write("\033[F")

print("2/10")

