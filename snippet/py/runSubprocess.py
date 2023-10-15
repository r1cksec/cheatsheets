import subprocess

try:
    # execute command and wait for execution to terminate, do not print to stdout, timeout of 3 seconds
    subprocess.check_call("whoami", stdout=subprocess.PIPE, stderr=subprocess.PIPE, shell=True, timeout=3)
except subprocess.CalledProcessError as exc:
    print("Command returned error: ", exc.returncode)

