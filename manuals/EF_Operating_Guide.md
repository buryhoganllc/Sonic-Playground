# Electric Forest Operating Guide - 7/30/25

## Sonic Playground - GRAMMY Museum

It is recommended that this guide be read in its entirety before changes are made to the _Electric Forest_.

## Overview  

### Component Files  

_Electric Forest_ utilizes Max, Ableton, and MadMapper show files to host the sensor controls, audio playback, and LED behavior, respectively. Show files exist in the “ELECTRIC FOREST SHOW FILES” folder on the Desktop.  

- Max: `~/Desktop/ELECTRIC FOREST SHOW FILES/Max/ElectricForest_VINT_v6_ratioTEST-InactTEST-vSC_012025v2.maxpat`
- Ableton: `~/Desktop/ELECTRIC FOREST SHOW FILES/Ableton/MultShow File/ElectricForest_v200_MultiShow_v2.als`
- MadMapper: `~/Desktop/ELECTRIC FOREST SHOW FILES/MadMapper/ElectricForest_MultiShow.mad`
- Automation scripts: `~/Desktop/ELECTRIC FOREST SHOW FILES/Automation` (See Appendix B)

### Standard Behavior  

_Electric Forest_ runs 24/7 and requires limited user intervention. If necessary, show files may be launched manually via their Desktop aliases. The aliases are named to reflect the order in which they are to be run:

1. MAX
2. ABLETON
3. MADMAPPER

Allow each application to fully load before launching the next file. Once that is complete, hide Max and MadMapper, then select the desired Ableton scene from the Power Manager menu bar list (see Scene Changes below.)  

### Version Control  

___NEVER___ save if prompted. All show files, in particular Ableton and MadMapper, receive a constant stream of control information when in operation. Those data streams are interpreted as unsaved changes from the default configuration of both applications.
If you need to quit either application for any reason, ___DO NOT SAVE___.  

## Automation

### Startup & Shutdown

_Electric Forest_ is hosted on an M2 Pro Mac Mini and runs 24/7 in a permanent attract/play mode. At present, there are NO automated power events on this system.  

### Scene Changes (Light and Sound cues)  

As of 7/22/25, _Electric Forest_ is programmed to cycle between two music scenes:  

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

### Volume Control  

Power Manager runs a “Nighttime Mode” script at 5:30PM SUNDAY-FRIDAY (6:30PM SATURDAY) to dim the output volume of the North and South surround speaker pairs by approximately 10dB. The individual tube speakers are unaffected.

A corresponding “Daytime Mode” script is run at 10:30AM SUNDAY-FRIDAY (9:30AM SATURDAY), to restore the North/South output levels to their default fader position (normal volume).  

### Accessing the Host Machines  

_Direct Access_ - The _Electric Forest_ wireless keyboard/trackpad controller is kept atop the equipment rack in the “closet” next to Beat Nexus. The closet door is opened via the 007 key in Curatorial.  

_Remote Access_ – The _Electric Forest_ Mac Mini is accessible via Jump Desktop. Jump Desktop is the ideal access method for manually triggering scene changes or volume states via the Power Manager menu bar list.  

When troubleshooting a physical system issue, direct access is recommended.  

_Authentication_ – all admin accounts on the host machines use the following credentials:  

- User: sp-admin
- Pass: 2008

## Manual Intervention

_Electric Forest_ is constructed to run autonomously, with manual intervention rarely necessary. Should you need to quit Max, Ableton, and/or MadMapper, do so ___WITHOUT SAVING.___  

### Changing Ableton Behavior (song lists and volume states)  

To change between the Shaun Chasin and Max Martin music sets on-demand, select the appropriate On Demand Power Manager event from the menu bar list by clicking the ![Power Manager macOS menu bar icon.](/images/PM_menuBar.png)   icon.  

![Power Manager on-demand list from menu bar.](/images/PM_onDemand.png)  

Selecting `“_Ableton-Max Martin_”` or `“_Ableton-Shaun Chasin_”` will fade out the currently playing audio, crossfade the lights to the new cue, and then begin playback of the selected song mix.  

You may also change the surround output level on-demand by selecting either `“_Ableton-Volume Daytime Mode_”` (normal volume) or `“_Ableton-Volume Nighttime Mode_”` (dimmed output, approximately 10 dB lower.)  

### Overriding Scheduled Events  

At times it may be necessary to manually trigger a music set/volume level keep it running beyond the point when the next programmed would occur (media days, special events, etc.)
To override scheduled events, open Power Manager from the Dock (the purple alarm clock icon) and un-check the appropriate event.  

For example, to set the Martin mix on-demand and prevent scheduled scene transitions to the Chasin mix, first select `“Ableton-Max Martin”` from the On Demand list (see above).  
Next, uncheck the `“_Shaun Chasin – Hourly_”` entry in the Power Manager event store:  

![Power Manager event store list all scheduled events.](/images/PM_eventStore.png)  

Make sure to restore normal behavior by re-checking any unchecked boxes when your event has concluded.  

### Muting Electric Forest  

At times it may be necessary to mute the audio output of _Electric Forest_ without stopping the lighting behavior (media days, private events, etc.)  
This mute state can be accomplished by shutting off the power to the loudspeaker distributors in the closet rack. Locate the “AUDIO POWER” Furman conditioner towards the bottom of the rack and turn it off.  
This will mute the audio system, leaving the lighting and sensing systems still active. Restore the Furman to an ON state to “unmute” _Electric Forest_.  

## Changing Tube Behavior  

_Electric Forest_ is designed to be adaptable and updatable. At times it may be desirable to change the audio content of the show, and/or the behavior (color) of the pixel components.  

### Changing Audio Content  

_Electric Forest_ is designed as a sixteen (16) channel mono immersive audio environment with two (2) stereo mixes facing out into the main gallery area.  
Audio content can be updated, but certain file preparation requirements must be met. Contact the interactive developer before making any changes to the Ableton file.  

### Changing Lighting Intensity  

At times it may be necessary to change the lighting intensity of the _Electric Forest_ as a whole – dimming the LED output for photo/video shoots, for example.  

To accomplish this:  

- Open Safari on the Mac Mini
- Click the Advatek Controller 1 bookmark from the bookmark bar to open the web interface for pixel controller 1 (tubes 1 through 8)
- Click the ADMINISTRATOR button
- Once the control page has loaded, click Pixel Outputs
- Locate the INTENSITY controls in the upper right corner.
- You can manually enter a value between 0 (off) and 255 (full) or use the slider. An intensity of 30% has proved useful for video shoots.
- Repeat these steps for controller 2 (tubes 9 through 16.) Locate the bookmark in the bookmark bar.
- When your event is complete, be sure to __RESTORE__ the intensity to __FULL (100%)__ for both controllers.

### Changing Lighting Behavior (Cues)  

All tubes have a background (static) and foreground (active) color which creates the meter bridge effect for each scene.  
These colors can be adjusted if desired for special events, but certain conditions must be adhered to. Make sure you read and understand the following steps before proceeding. If there is any doubt, contact the developer.  

- Create a new Scene in the MadMapper file. Set your desired transition time and fade shape.
- Navigate to the list of Tubes on the left and scroll down to select Tube 01.
- Navigate to the right to the shaders/effects list and locate “Fill,” which corresponds to Tube 01. Use the map on the inside of the closet door to identify where Tube 01 is located in physical space. You will also notice a “Fill-1,” Fill-2,” etc. Each tube has a pixel effect assigned to it, which under normal conditions are all the same.
  - The title of the effect is offset -1 for each tube, so Tube 02 is Fill-1; Tube 10 is Fill-9; Tube 16 is Fill-15, etc.
- In the lower right area, you have the effects parameters for “Fill.” Locate the entries for Front Color and Back Color, which are represented by colored rectangles. Back Color is the static color that is always present. Front Color is the dynamic color that follows the peak level of the corresponding audio track.
- You can change either color setting by clicking the colored rectangle to reveal and change the hex code, by selecting one of the pre-defined colors, by using the color wheel, or by using the RGB value sliders.
  - _Note: because of the semi-opaque nature of the plexiglass tubes, very deep saturated colors that do not use the white channel in the pixels tend not to look that great. High contrast, bright colors read better. You will notice this right away if you dial up a deep purple or forest green._
- Once you have found your new colors, right click on “Fill” and select “Copy All Settings.”
- Right click on “Fill-1” and select “Paste Settings.”
- Repeat these steps for the remaining “Fill-…” entries. Return to the Scenes/Cues list, right click on your newly created scene and select Update Scene.
- Enable Live mode to allow for single-click scene recall.

## Troubleshooting

### Electric Forest sensors are not registering movement

Conduct a full power cycle of the system:

- Quit MadMapper, Ableton and Max. DO NOT save if prompted.
- Shut down the Mac Mini.
- Turn off PIXEL POWER Furman (red) and AUDIO POWER Furman (yellow).
- Wait three (3) minutes
- Restore PIXEL POWER Furman. Wait for a full boot of the Furman and for the line voltage to be displayed.
- Restore AUDIO POWER Furman. Wait for a full boot of the Furman and for the line voltage to be displayed.
- Wait for the pixel system switch (TP-Link) to fully boot.
- Turn on the Mac Mini (power button located at rear right - reach through the right side of the rack to access it.)
- Once fully booted to the desktop, launch the application components from their Desktop aliases. The aliases are named to reflect the order in which they are run:
  - 1 - MAX
  - 2 - ABLETON
  - 3 - MADMAPPER
- __Allow each application to fully boot before moving on to the next one.__
- Lastly, begin playback in Ableton by running one of the Power Manager events (`“_Ableton-Shaun Chasin_”` for example) to begin audio playback and set the tube lighting into the correct configuration.

### One or more loudspeakers do not appear to be working  

Use the tube map on the interior of the closet door to determine which channel number appears to be faulty.  
Locate the corresponding Core8 speaker distributor for the loudspeaker. The physical rack layout is as follows:  

- Core8 (3) - Channels 17 - 24
- Core8 (2) - Channels 09 - 16
- Core8 (1) - Channels 01 - 08

- Look for a green link light and yellow PoE light on the face of the Core unit corresponding to the tube in question.
- If the PoE light is not present, verify that the corresponding dip switch is in the ON position.
- If the link light is not present, verify that the Cat6 cable is fully inserted at the loudspeaker and distributor.
- If both lights are present but audio cannot be heard, you may check Dante Controller to verify that the subscription is valid or contact the developer for remote support.

### Replacing System Components  

Refer to the connection diagrams for information on replacing cables, peripherals, etc. If you determine that an _Electric Forest_ tube is damaged and needs to be replaced entirely, contact the developer.  
It is recommended that the developer and a representative of Blackmouth Design be present the first time a tube is replaced in its entirety.

## Appendix A - MIDI Event Messaging

The scheduled and on-demand events in _Electric Forest_ – scene changes, volume changes, etc. – are achieved by passing MIDI commands to Ableton and MadMapper via a command line utility.  

Tube sensor input – the MIDI data stream that sets an individual track/tube fader position in response to visitor input – is also mapped to Ableton properties.  

The event list is as follows:

### Track volume control (Ableton)

| Chan | Event      | Byte 1 | Byte 2 | Device           | Path              | Name                | Min Val    | Max Val   | Comments                        |
| ---- | ---------- | ------ | ------ | ---------------- | ----------------- | ------------------- | ---------- | --------- | ------------------------------- |
| 01   | CC         | 01     | var    | from max 1       | 01-Audio \| Mixer | Track Volume        | -60 dB     | 0 dB      |
| 01   | CC         | 01     | var    | from max 1       | Sampler 1         | Track Volume        | -60 dB     | 0 dB      |
| 01   | CC         | 02     | var    | from max 1       | 02-Audio \| Mixer | Track Volume        | -60 dB     | 0 dB      |
| 01   | CC         | 02     | var    | from max 1       | Sampler 2         | Track Volume        | -60 dB     | 0 dB      |
| 01   | CC         | 03     | var    | from max 1       | 03-Audio \| Mixer | Track Volume        | -60 dB     | 0 dB      |
| 01   | CC         | 03     | var    | from max 1       | Sampler 3         | Track Volume        | -60 dB     | 0 dB      |
| 01   | CC         | 04     | var    | from max 1       | 04-Audio \| Mixer | Track Volume        | -60 dB     | 0 dB      |
| 01   | CC         | 04     | var    | from max 1       | Sampler 4         | Track Volume        | -60 dB     | 0 dB      |
| 01   | CC         | 05     | var    | from max 1       | 05-Audio \| Mixer | Track Volume        | -60 dB     | 0 dB      |
| 01   | CC         | 05     | var    | from max 1       | Sampler 5         | Track Volume        | -60 dB     | 0 dB      |
| 01   | CC         | 06     | var    | from max 1       | 06-Audio \| Mixer | Track Volume        | -60 dB     | 0 dB      |
| 01   | CC         | 06     | var    | from max 1       | Sampler 6         | Track Volume        | -60 dB     | 0 dB      |
| 01   | CC         | 07     | var    | from max 1       | 07-Audio \| Mixer | Track Volume        | -60 dB     | 0 dB      |
| 01   | CC         | 07     | var    | from max 1       | Sampler 7         | Track Volume        | -60 dB     | 0 dB      |
| 01   | CC         | 08     | var    | from max 1       | 08-Audio \| Mixer | Track Volume        | -60 dB     | 0 dB      |
| 01   | CC         | 08     | var    | from max 1       | Sampler 8         | Track Volume        | -60 dB     | 0 dB      |
| 01   | CC         | 09     | var    | from max 1       | 09-Audio \| Mixer | Track Volume        | -60 dB     | 0 dB      |
| 01   | CC         | 09     | var    | from max 1       | Sampler 9         | Track Volume        | -60 dB     | 0 dB      |
| 01   | CC         | 10     | var    | from max 1       | 10-Audio \| Mixer | Track Volume        | -60 dB     | 0 dB      |
| 01   | CC         | 10     | var    | from max 1       | Sampler 10        | Track Volume        | -60 dB     | 0 dB      |
| 01   | CC         | 11     | var    | from max 1       | 11-Audio \| Mixer | Track Volume        | -60 dB     | 0 dB      |
| 01   | CC         | 11     | var    | from max 1       | Sampler 11        | Track Volume        | -60 dB     | 0 dB      |
| 01   | CC         | 12     | var    | from max 1       | 12-Audio \| Mixer | Track Volume        | -60 dB     | 0 dB      |
| 01   | CC         | 12     | var    | from max 1       | Sampler 12        | Track Volume        | -60 dB     | 0 dB      |
| 01   | CC         | 13     | var    | from max 1       | 13-Audio \| Mixer | Track Volume        | -60 dB     | 0 dB      |
| 01   | CC         | 13     | var    | from max 1       | Sampler 13        | Track Volume        | -60 dB     | 0 dB      |
| 01   | CC         | 14     | var    | from max 1       | 14-Audio \| Mixer | Track Volume        | -60 dB     | 0 dB      |
| 01   | CC         | 14     | var    | from max 1       | Sampler 14        | Track Volume        | -60 dB     | 0 dB      |
| 01   | CC         | 15     | var    | from max 1       | 15-Audio \| Mixer | Track Volume        | -60 dB     | 0 dB      |
| 01   | CC         | 15     | var    | from max 1       | Sampler 15        | Track Volume        | -60 dB     | 0 dB      |
| 01   | CC         | 16     | var    | from max 1       | 16-Audio \| Mixer | Track Volume        | -60 dB     | 0 dB      |
| 01   | CC         | 16     | var    | from max 1       | Sampler 16        | Track Volume        | -60 dB     | 0 dB      |

### Lighting Control (MadMapper)

| Chan | Event      | Byte 1 | Byte 2 | Device           | Path              | Name                | Min Val    | Max Val   | Comments                        |
| ---- | ---------- | ------ | ------ | ---------------- | ----------------- | ------------------- | ---------- | --------- | ------------------------------- |
| 02   | CC         | 01     | var    | IAC Driver Bus 1 |                   | Tube 01 color width | 0          | 127       |
| 02   | CC         | 02     | var    | IAC Driver Bus 1 |                   | Tube 02 color width | 0          | 127       |
| 02   | CC         | 03     | var    | IAC Driver Bus 1 |                   | Tube 03 color width | 0          | 127       |
| 02   | CC         | 04     | var    | IAC Driver Bus 1 |                   | Tube 04 color width | 0          | 127       |
| 02   | CC         | 05     | var    | IAC Driver Bus 1 |                   | Tube 05 color width | 0          | 127       |
| 02   | CC         | 06     | var    | IAC Driver Bus 1 |                   | Tube 06 color width | 0          | 127       |
| 02   | CC         | 07     | var    | IAC Driver Bus 1 |                   | Tube 07 color width | 0          | 127       |
| 02   | CC         | 08     | var    | IAC Driver Bus 1 |                   | Tube 08 color width | 0          | 127       |
| 02   | CC         | 09     | var    | IAC Driver Bus 1 |                   | Tube 09 color width | 0          | 127       |
| 02   | CC         | 10     | var    | IAC Driver Bus 1 |                   | Tube 10 color width | 0          | 127       |
| 02   | CC         | 11     | var    | IAC Driver Bus 1 |                   | Tube 11 color width | 0          | 127       |
| 02   | CC         | 12     | var    | IAC Driver Bus 1 |                   | Tube 12 color width | 0          | 127       |
| 02   | CC         | 13     | var    | IAC Driver Bus 1 |                   | Tube 13 color width | 0          | 127       |
| 02   | CC         | 14     | var    | IAC Driver Bus 1 |                   | Tube 14 color width | 0          | 127       |
| 02   | CC         | 15     | var    | IAC Driver Bus 1 |                   | Tube 15 color width | 0          | 127       |
| 02   | CC         | 16     | var    | IAC Driver Bus 1 |                   | Tube 16 color width | 0          | 127       |

### Transport/Output Control (Ableton)

| Chan | Event      | Byte 1 | Byte 2 | Device           | Path              | Name                | Min Val    | Max Val   | Comments                        |
| ---- | ---------- | ------ | ------ | ---------------- | ----------------- | ------------------- | ---------- | --------- | ------------------------------- |
| 03   | CC         | 01     | 127    | IAC Driver Bus 1 | Transport         | Start               |            |           |
| 03   | CC         | 02     | 127    | IAC Driver Bus 1 | Transport         | Stop                |            |           |
| 03   | CC         | 20     | 127    | IAC Driver Bus 1 | A-North \| Mixer  | Track Volume        | -40 dB     | -2.5 dB   |
| 03   | CC         | 20     | 127    | IAC Driver Bus 1 | B-South \| Mixer  | Track Volume        | -40 dB     | -2.5 dB   |

### Cue Control (MadMapper)

| Chan | Event      | Byte 1 | Byte 2 | Device           | Path              | Name                | Min Val    | Max Val   | Comments                        |
| ---- | ---------- | ------ | ------ | ---------------- | ----------------- | ------------------- | ---------- | --------- | ------------------------------- |
| 04   | CC         | 03     | 127    | IAC Driver Bus 1 | Scene 01 (Chasin) |                     | 0          | 127       |
| 04   | CC         | 04     | 127    | IAC Driver Bus 1 | Scene 02 (Martin) |                     | 0          | 127       |

### Scene Control (Ableton)

| Chan | Event      | Byte 1 | Byte 2 | Device           | Path              | Name                | Min Val    | Max Val   | Comments                        |
| ---- | ---------- | ------ | ------ | ---------------- | ----------------- | ------------------- | ---------- | --------- | ------------------------------- |
| 05   | CC         | 01     | 127    | IAC Driver Bus 1 | Scene 1 (Fade Out)|                     |            |           |
| 05   | CC         | 03     | 127    | IAC Driver Bus 1 | Scene 3 (Chasin)  |                     |            |           |
| 05   | CC         | 04     | 127    | IAC Driver Bus 1 | Scene 4 (Martin)  |                     |            |           |

## Appendix B – Event Automation  

All scheduled events are handled via Power Manager. Event triggers execute shell script actions to send MIDI commands to various system components.  
Repeated events – scripts that are run multiple times a day on a schedule, are created by means of AppleScript commands to Power Manager.  

### Creating repeating events (example: hourly)

```applescript
-- Power Manager repeated events.applescript
-- Created by: BRENDAN HOGAN
-- Created on: 7/23/25
--
-- Copyright © 2025 Bury, Hogan & Associates LLC, All Rights Reserved
--

use AppleScript version "2.4" -- Yosemite (10.10) or later
use scripting additions

tell application "Power Manager"
 
 -- Set inclusive start and end hours (24 hour notation)
 set startingHour to 10 -- 10am
 set endingHour to 18 -- 6pm
 -- Set days of the week to trigger
 set daysOfTheWeek to [Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday]
 
 set secondsPerHour to (60 * 60)
 
 -- Create the event in the workshop 
 tell workshop
  
  -- Create a new event
  set myEvent to make new event with properties {name:"Hourly event"} -- modify the name as needed
  
  -- Create a new trigger for every hour of the day
  repeat with i from 0 to 23
   if i ≥ startingHour and i ≤ endingHour then
    make new trigger daily with properties {seconds from midnight:i * secondsPerHour, days:daysOfTheWeek} at front of triggers of myEvent
   end if
  end repeat
  
 end tell
 
 -- Deploy the event
 tell event store to store these events myEvent
 
 -- Clean up the workshop
 empty workshop
 
end tell
```

### Creating repeating events with minute offsets (example: XX:45)

```applescript
-- Power Manager repeated events with offset.applescript
-- Created by: BRENDAN HOGAN
-- Created on: 7/23/25
--
-- Copyright © 2025 Bury, Hogan & Associates LLC, All Rights Reserved
--

use AppleScript version "2.4" -- Yosemite (10.10) or later
use scripting additions

tell application "Power Manager"
 
 -- Set inclusive start and end hours (24 hour notation)
 set startingHour to 10 -- 10am
 set endingHour to 18 -- 6pm
 
 -- Set days of the week to trigger
 set daysOfTheWeek to [Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday]
 
 set secondsPerHour to (60 * 60)
 set minutesOffset to 45 -- adjust this to change the offset in minutes (e.g., 15 for 15 minutes)
 set secondsOffset to minutesOffset * 60
 
 -- Create the event in the workshop 
 tell workshop
  
  -- Create a new event
  set myEvent to make new event with properties {name:"Hourly event with minute offset"}
  
  -- Create a new trigger for every hour within the range, offset by 45 minutes
  repeat with i from 0 to 23
   if i ≥ startingHour and i ≤ endingHour then
    set triggerTime to (i * secondsPerHour) + secondsOffset
    make new trigger daily with properties {seconds from midnight:triggerTime, days:daysOfTheWeek} at front of triggers of myEvent
   end if
  end repeat
  
 end tell
 
 -- Deploy the event
 tell event store to store these events myEvent
 
 -- Clean up the workshop
 empty workshop
 
end tell
```

### Creating MIDI events via shell scripting (example: Shaun Chasin mix)  

Scheduled events such as Ableton scene changes execute shell scripts, such as the following example:  

```bash
#!/bin/bash
# Example of multi-command MIDI script
# Run Shaun Chasin "Movements" mix and set lights
# Uncomment the correct path to your sendmidi install location:
# Intel Macs from Homebrew
#path=/usr/local/Cellar/sendmidi
# Apple Silicon Macs from Homebrew
#path=/opt/homebrew/bin/sendmidi
# Binary installs
path=/usr/local/bin/sendmidi
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
```

The shell scripts tell the command line utility to call the MIDI device “IAC Driver Bus 1” and pass messages with defined channels, message types, byte 1 values, and byte 2 values.  
These strings correspond to mapped parameters in Ableton and MadMapper.  

_Note_: the Mac Mini running _Electric Forest_ utilizes a binary install of the command line utility.  
