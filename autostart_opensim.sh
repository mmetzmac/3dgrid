#!/bin/bash
export MONO_THREADS_PER_CPU=1000
 
# Start R.O.B.U.S.T Server
cd /home/opensim/current/bin/
sudo -u opensim screen -S Robust -d -m mono Robust.exe -inifile=Robust.HG.ini
 
# Wai until ROBUST has started
sleep 10
 
ulimit -s 262144
 
# Starte Region Region 1
sudo -u opensim /usr/local/bin/opensim start <Region 1>
 
# Starte Region Region 2
sudo -u opensim /usr/local/bin/opensim start <Region 2>
sleep 10
 
#Starte Monit
/etc/init.d/monit start
