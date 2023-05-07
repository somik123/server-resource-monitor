import os
from subprocess import call

# Max load for script to run
maxLoad = 10.0


loadAvg = os.getloadavg()

print(loadAvg)

if loadAvg[1] > maxLoad:
        print("Run script")
        rc = call("/home/somik/resourceMonitor.sh")
else:
        print("Nothing to do")

print("End")