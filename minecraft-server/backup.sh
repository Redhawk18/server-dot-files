#!/usr/bin/bash
cd /home/redhawk/minecraft-server/

day=$(date +%d)
month=$(date +%b)
year=$(date +%Y)

#copy file to backup folder
newName=`echo 1.17-World_$month-$day-$year`

#zip backup from world file and put it in the correct folder
tar -zvcf "backups/$newName.tar.gz" 1.17-World

echo
echo "backup complete"
echo
