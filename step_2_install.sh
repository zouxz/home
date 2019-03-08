#!/bin/bash 

for package in $(cat dpkg-warning.txt | grep "dpkg: warning: files list file for package " | grep -Po "'[^']*'" | sed "s/'//g");
do
	sudo apt -y install --reinstall   "$package";
	#如果没有安装aptitude, 则可以用apt-get --reinstall "$package";
done

