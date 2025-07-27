#!/bin/bash
#
# uncomment the correct path to your sendmidi install location:
# Intel Macs from Homebrew
#path=/usr/local/Cellar/sendmidi
# Apple Silicon Macs from Homebrew
#path=/opt/homebrew/bin/sendmidi
# Binary installs
path=/usr/local/bin/sendmidi
#
# Example: set output level of North/South surrounds to -2.5dB, value scaling range (-40dB to -2.5dB)
cmd="dev IAC Driver Bus 1 ch 5 cc 50 127” 
#
midiEvent="$path $cmd"
#
eval "$midiEvent"
exit 0;
