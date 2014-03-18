#!/bin/bash
#title           :slideget.sh
#description     :small script used to download slides from slideshare.net
#author		 	 :Camilo Sáez
#date            :20140318
#version         :0.1    
#usage		     :bash slideget.sh url
#notes           :Install wget to use this script.
#==============================================================================
req=$1
echo 'Descargando slides desde '$req
uri=`curl -s $req | grep 'class="slide_image"' | awk '{print $5}' | awk -F'"' '{print $2}' | awk -F'?' '{print $1}'`
for i in $uri
do
	echo "resting ..." #adding human factor
	sleep 1
	echo "..."
	sleep 2
	echo "..."
	sleep 2
	wget $i
done