#!/bin/bash
#
# ----------------------------------------------------------------------------
# FILE: Process Watcher.sh
# AUTHOR: Brendan Hogan
# DATE: 2024-11-08
#
# DESCRIPTION
# Monitor for a defined process(es) in macOS to ensure that the process or 
# processes are valid. If a non-zero reply to the query is returned, the script 
# will re-launch the defined process(es).
# This script is intended for installation media systems where continuous
# or scheduled operation is required. 
# 
# INSTRUCTIONS:
# Define your first process name as 'firstProcess' and first file name as
# 'firstFile'. Define your other process(es) name/file (if applicable) in a
# similar manner. Use Activity Monitor to identify process names.
#
# NOTE: File pathways with spaces are enclosed in single quotes. /usr/bin/open 
# commands where the file name contains spaces are enclosed in double quotes.
# Add additional processes/files as required. Make the script executable, with 
# Terminal as the default application. Set the shell file as a Login Item.
# ----------------------------------------------------------------------------
#
# VARIABLES
FIRSTPROCESS=Live
FIRSTFILE='/Volumes/M2_SYNC/Production/2024/2024_GRAMMY_SonicPlayground/Ableton/ElectricForest_v001 Project/ElectricForest_v007.als'
SECONDPROCESS=MadMapper
SECONDFILE='/Volumes/M2_SYNC/Production/2024/2024_GRAMMY_SonicPlayground/MadMapper/ElectricForest_ColorFillAudioMap_v2_2024-11-02.mad'
THIRDPROCESS=Max
THIRDFILE='/Volumes/M2_SYNC/Production/2024/2024_GRAMMY_SonicPlayground/Max/ElectricForest_VINT_v5.maxpat'
LAUNCHSLEEP=10 # sleep time in seconds between application launches
LOOPSLEEP=10 # sleep time between checks between watcher checks
#
clear
# MAIN RUNNER
# Print info to Terminal
echo "------------------------------------------------------------------------"
echo " Monitor $FIRSTPROCESS, $SECONDPROCESS, and $THIRDPROCESS.              "
echo " Run watcher loops for all.                                             "     
echo " Restart $FIRSTPROCESS and/or $SECONDPROCESS and/or $THIRDPROCESS       "
echo " if they crash.                                                         "
echo " Waiting for 10 seconds.                                                "
echo " -----------------------------------------------------------------------"
sleep 10
# LAUNCH APPLICATION(S):
/usr/bin/open "$FIRSTFILE"
sleep $LAUNCHSLEEP
/usr/bin/open "$SECONDFILE"
sleep $LAUNCHSLEEP
/usr/bin/open "$THIRDFILE"
#
# RUN PRIMARY LOOP
echo " Starting $FIRSTPROCESS watcher loop. "
until [ 0 = 1 ]
do
     /usr/bin/killall -0 $FIRSTPROCESS
    if [ $? = 0 ]												
    then
    echo "$FIRSTPROCESS is active. Checking again in $LOOPSLEEP seconds..."
    else
    echo ""
	echo "" 
	echo "$(date): Error: Process not found - restarting $FIRSTPROCESS "
	echo ""
	echo ""								
    /usr/bin/open "$FIRSTFILE"
    fi
    sleep $LOOPSLEEP								
done &
# RUN SECONDARY LOOP
echo " Starting $SECONDPROCESS watcher loop. "
until [ 0 = 1 ]
do
     /usr/bin/killall -0 $SECONDPROCESS
    if [ $? = 0 ]													
    then
    echo "$SECONDPROCESS is active. Checking again in $LOOPSLEEP seconds..."
    else
    echo ""
	echo "" 
	echo "$(date): Error: Process not found - restarting $SECONDPROCESS "
	echo ""
	echo ""								
    /usr/bin/open "$SECONDFILE"
    fi
    sleep $LOOPSLEEP								
done &
# RUN TERTIARY LOOP
echo " Starting $THIRDPROCESS watcher loop. "
until [ 0 = 1 ]
do
     /usr/bin/killall -0 $THIRDPROCESS
    if [ $? = 0 ]                                                               
    then
    echo "$THIRDPROCESS is active. Checking again in $LOOPSLEEP seconds..."
    else
    echo ""
     echo "" 
     echo "$(date): Error: Process not found - restarting $THIRDPROCESS "
     echo ""
     echo ""                                      
    /usr/bin/open "$THIRDFILE"
    fi
    sleep $LOOPSLEEP
done
