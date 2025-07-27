#!/bin/bash
# Run Shaun Chasin "Movements" mix and set lights
# Intel Macs from Homebrew
#path=/usr/local/Cellar/sendmidi
# Apple Silicon Macs from Homebrew
path=/opt/homebrew/bin/sendmidi
# Binary installs
#path=/usr/local/bin/sendmidi
#
cmd1="dev IAC Driver Bus 1 ch 5 cc 1 127" # fade out audio
cmd2="dev IAC Driver Bus 1 ch 4 cc 3 127" # LED scene 1
cmd3="dev IAC Driver Bus 1 ch 5 cc 3 127" # Shaun Chasin mix
cmd4="dev IAC Driver Bus 1 ch 3 cc 2 127" # stop transport
#
midiEvent1="$path $cmd1"
midiEvent2="$path $cmd2"
midiEvent3="$path $cmd3"
midiEvent4="$path $cmd4"
#
eval "$midiEvent1"
eval "$midiEvent2"
sleep 6
eval "$midiEvent4"
sleep 0.1
eval "$midiEvent4"
sleep 0.4
eval "$midiEvent3"
exit 0;
