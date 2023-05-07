import os
import shutil


total_memory, used_memory, free_memory = map(int, os.popen('free -t -m').readlines()[-1].split()[1:])
print("RAM used: ", round((used_memory/total_memory) * 100, 2),'%')


total_disk, used_disk, free_disk = shutil.disk_usage("/")
print("Disk used: ", round((used_disk/total_disk) * 100, 2),'%')


#print("Free: %d GiB" % (free // (2**30)))