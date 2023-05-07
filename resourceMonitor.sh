#!/bin/sh

LogFile=`date '+%Y-%m-%d_%H-%M-%S.txt'`
LatestFile="latest.txt"

echo $LogFile

# save to file
/home/somik/checkResourceUsage.sh > logs/${LogFile}

# update latest file
rm -f logs/$LatestFile
cp logs/${LogFile} logs/$LatestFile


# Check condition of logs http server
pid=`ps aux | grep [http].server | grep -iv screen | awk '{print $2}'`

if [ -z "$pid" ]
then
        # Restart the server
        echo "Process is dead"
        screen -dm bash -c 'python3 -m http.server --directory /home/somik/logs/ 8000'
else
        # Do nothing
        echo "${pid} is running"
fi

#python3 -m http.server --directory /home/somik/logs/ 8000