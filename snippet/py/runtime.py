import timeit
import time

# compute runtime
start = timeit.default_timer()
time.sleep(1)
stop = timeit.default_timer()
runtime = stop - start

print("\nRuntime: " + str(runtime) + " s")

