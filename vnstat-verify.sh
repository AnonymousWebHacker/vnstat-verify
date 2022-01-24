#!/bin/bash
# Calc limit traffic VPS

#Total Trafic
let LimitGB=230 #Set valor on GB
#echo "Limite de servidor: $LimitGB GB"

#Time Check
time="20s"

#Change GB to GiB
limit=$(echo "scale=2; $LimitGB/1.074" | bc)
#echo "Limite es $limit GiB"

#Set interface
interface=eth0

#Get total trafic
function used_function {
	used=$(vnstat --oneline | cut -d ';' -f 11 | awk '{print $1}');
	#used=4500
	#echo "Trafico usado $used Gib";
	check_function;
}

function check_function {
	if [ 1 -eq "$(echo "${used} < ${limit}" | bc)" ];
	then
		#echo "No a sobrepasado limite";
		sleep_function;
	else
		echo "Sobrepasado de limite";
		l2pt_function;
	fi
}

function l2pt_function {
	##
	# Service L2PT
	##
	# Stop Services
	#echo "service ipsec stop";
	#echo "service xl2tpd stop";
	#Disable service
	#echo "systemctl disable ipsec";
	#echo "systemctl disable xl2tpd";
	outline_function;
}

function outline_function {
	#Proceso Outline 
	#echo "docker stop shadowbox watchtower";
	#echo "service docker stop";
	#echo "service docker.io stop";
	#echo "systemctl disable docker";
	#echo "systemctl disable docker.io";
	#sleep_function;
	exit;
}
function sleep_function {
	sleep $time;
	used_function;
}

used_function;
