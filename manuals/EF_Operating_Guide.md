# Electric Forest Operating Guide
## Version: 1.4
### Updated: 7/25/25
##### Prepared by Bury, Hogan & Associates for *The GRAMMY Museum*
---
_It is recommended that this guide be read in its entirety before changes are made to the Electric Forest_    
## Overview  
__Component Files:__  

Electric Forest utilizes Max, Ableton, and MadMapper show files to host the sensor controls, audio playback, and LED behavior, respectively. Show files exist in the “ELECTRIC FOREST SHOW FILES” folder on the Desktop.  

- Max: ~/Desktop/ELECTRIC FOREST SHOW FILES/Max/ElectricForest_VINT_v6_ratioTEST-InactTEST-vSC_012025v2.maxpat
- Ableton: ~/Desktop/ELECTRIC FOREST SHOW FILES/Ableton/MultShow File/ElectricForest_v200_MultiShow_v2.als
- MadMapper: ~/Desktop/ELECTRIC FOREST SHOW FILES/MadMapper/ElectricForest_MultiShow.mad
- Automation scripts: ~/Desktop/ELECTRIC FOREST SHOW FILES/Automation (See Appendix B)

__Standard Behavior:__  

Electric Forest runs 24/7 and requires limited user intervention. If necessary, show files may be launched manually via their Desktop aliases. The aliases are named to reflect the order in which they are to be run:
1. MAX
2. ABLETON
3. MADMAPPER    

Allow each application to fully load before launching the next file. Once that is complete, hide Max and MadMapper, then select the desired Ableton scene from the Power Manager menu bar list (see Scene Changes below.)  

__Version Control:__  

___NEVER___ save if prompted. All show files, in particular Ableton and MadMapper, receive a constant stream of control information when in operation. Those data streams are interpreted as unsaved changes from the default configuration of both applications.   
If you need to quit either application for any reason, ___DO NOT SAVE___.  
## Automation

__Startup & Shutdown:__  

Electric Forest is hosted on an M2 Pro Mac Mini and runs 24/7 in a permanent attract/play mode. At present, there are NO automated power events on this system.  

__Scene Changes (Light and Sound cues):__  

As of 7/22/25, Electric Forest is programmed to cycle between two music scenes:  
1. “Movements” – Shaun Chasin’s original composition
2. Max Martin mix (“Baby One More Time,” “Since You’ve Been Gone,” “Everybody”)
     
Through Power Manager events, the Chasin set will be triggered hourly between 11AM and 5PM SUNDAY-FRIDAY, and between 10AM and 6PM SATURDAY.  

The Martin mix will be triggered on the three-quarter hour between 11:45AM and 4:45PM SUNDAY-FRIDAY, and between 10:45AM and 5:45PM SATURDAY.  

An example schedule of a typical open day such as Friday:  
- 11:00AM – Chasin
- 11:45AM – Martin
- 12:00PM – Chasin
- 12:45PM – Martin
- 1:00PM – Chasin
- 1:45PM – Martin
- 2:00PM – Chasin
- 2:45PM – Martin
- 3:00PM – Chasin
- 3:45PM – Martin
- 4:00PM – Chasin
- 4:45PM – Martin
- 5:00PM – Chasin (Chasin continues overnight at a lower level – see Volume Control)
  
When a scene event is triggered, the current playing audio fades out to silence over six (6) seconds as the tubes change color to the next look.
The cued scene music will then begin playing. Audio is effectively continuous throughout the day. MadMapper will advance tube lighting scenes in synchronicity with Ableton, changing foreground and background colors.  
Manual scene changes are achieved via the Power Manager menu bar icon by selecting the appropriate “On Demand” event, such as “Ableton-Shaun Chasin.” See Appendix B for more information.  

__Volume Control:__  

Power Manager runs a “Nighttime Mode” script at 5:30PM SUNDAY-FRIDAY (6:30PM SATURDAY) to dim the output volume of the North and South surround speaker pairs by approximately 10dB. The individual tube speakers are unaffected. 

A corresponding “Daytime Mode” script is run at 10:30AM SUNDAY-FRIDAY (9:30AM SATURDAY), to restore the North/South output levels to their default fader position (normal volume).  

__Accessing the Host Machines:__  

_Direct Access_ - The Electric Forest wireless keyboard/trackpad controller is kept atop the equipment rack in the “closet” next to Beat Nexus. The closet door is opened via the 007 key in Curatorial.  

_Remote Access_ – The Electric Forest Mac Mini is accessible via Jump Desktop. Jump Desktop is the ideal access method for manually triggering scene changes or volume states via the Power Manager menu bar list.  

When troubleshooting a physical system issue, direct access is recommended.  

_Authentication_ – all admin accounts on the host machines use the following credentials:  
- User: sp-admin
- Pass: 2008

## Manual Intervention
Electric Forest is constructed to run autonomously, with manual intervention rarely necessary. Should you need to quit Max, Ableton, and/or MadMapper, do so ___WITHOUT SAVING.___  

__Changing Ableton Behavior (song lists and volume states)__  

To change between the Shaun Chasin and Max Martin music sets on-demand, select the appropriate On Demand Power Manager event from the menu bar list by clicking the   icon.  
 
Selecting “Ableton-Max Martin” or “Ableton-Shaun Chasin” will fade out the currently playing audio, crossfade the lights to the new cue, and then begin playback of the selected song mix.  

You may also change the surround output level on-demand by selecting either “Ableton-Volume Daytime Mode” (normal volume) or “Ableton-Volume Nighttime Mode” (dimmed output, approximately 10 dB lower.)  





