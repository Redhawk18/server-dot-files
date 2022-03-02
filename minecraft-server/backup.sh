#!/usr/bin/bash
cd /home/redhawk/minecraft-server/

day=$(date +%d)
month=$(date +%b)
year=$(date +%Y)

#copy file to backup folder
newName=`echo 1.17-World_$month-$day-$year`

#creates a new dir in backups/
mkdir backups/$newName

#copy contents
cp -R "1.17-World" backups/$newName

#zip the backup
tar -zcf "$newName.tar.gz" backups/$newName
mv "$newName.tar.gz" backups/

#remove new dir
rm -R backups/$newName
