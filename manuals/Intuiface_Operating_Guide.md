# Operating Instructions for Intuiface Systems - version 1.0.3, 07/01/2025

_It is recommended that you read the entirety of this operating guide before making changes to Intuiface Systems_

## Automated Startup and Shutdown

### Machine Operating Hours

Intuiface experiences (_Film & TV_, _Video Games_, _Voice Acting_) all run on Intel NUC 13 Pro hosts running Windows 11.   
The host machines will start up automatically at 06:00 hours daily and shut down automatically at 01:00 hours daily.   
Host machines can be manually shut down at any time via direct access or remote access (see next section).

### Additional Actions

Voice Acting runs a batch file at boot to configure the mode and visibility of OBS Studio.

### Automatic Player Launch

Intuiface will run automatically on each Windows host machine. Manual application launch is not necessary.

### Accessing the Host Machines

#### Direct Access

Each host machine has a dedicated Logitech wireless keyboard/trackpad controller. All controllers are labeled with their corresponding experience/interactive name. Intuiface system controllers are kept in Curatorial.    
Physical access to the host machines may be achieved by carefully unscrewing the Corian cover (_Film & TV_, _Video Games_)  
taking care to support the weight of the cover until all screws are removed. This is best undertaken by two people.  

Use the 800 key kept in Curatorial to unlock the Voice Acting cabinet.

#### Remote Access

All host machines are accessible via Jump Desktop.  

When troubleshooting a physical system issue, direct access is recommended.

### Authentication

All admin accounts on the host machines use the following credentials:  
- User: sp-admin
- Pass: 2008

All Intuiface host machines run in a non-admin “show” account called “sp-show” with a password of “s0n1csh0w”.  
It is unlikely that you will ever need to enter these credentials.

#### Jump Desktop Configuration

- Configure your installation of Jump Desktop to use the ‘sp-admin’ credentials for Auto Logon.
- Configure your Display settings to be “Separate Windows” for _Film & TV_ and _Video Games_.
- Configure your Sharing settings to NOT play audio (uncheck the box).

#### Intuiface Restart and Reboot - Web Access

You may restart Intuiface Player or reboot the PC manually from the Intuiface web management console.   
This is a useful means of interfacing with the host PCs when you only wish to start clean and do not need to perform additional troubleshooting.

- Access the management console at https://my.intuiface.com/login.aspx and login with your account credentials.
- Select “Players” from the “Management” icon column.
- Select the Player instance you wish to control (all relevant players are prefixed with “SonicPlayground-“ and the interactive title.)
- Select the appropriate action:
  - “Restart” – close and relaunch Intuiface Player
  - “Reboot” – perform a PC reboot

## Manual Intervention

All experiences are constructed to run autonomously, with manual intervention rarely necessary. 

### Setting Extended Display Mode

_Film & TV_, and _Video Games_ utilize extended display mode on their respective host machines.   
If the secondary display surface (the Samsung television) does not automatically turn on at startup, you can place the system(s) into extended display mode manually:

#### Via wireless keyboard/trackpad

- Turn on the television manually via the power button under the lower right bezel, or via the remote control in Curatorial labeled “Samsung DU7200.” 
- Locate the appropriate Logitech controller and press the function and F11 keys simultaneously (FN + F11). 
- This will cycle display modes, and you will see the Attract screen appear on the television.

#### Via Jump Desktop

- Turn on the television manually via the power button under the lower right bezel, or via the remote control in Curatorial labeled “Samsung DU7200.”
- Connect to the appropriate exhibit machine (make sure your Display preferences in Jump are set to “Separate Windows.”
  - Click the Remote menu, then Send Key.
  - Select F11 from the resulting list. Continue to send the command until the displays (your separate Jump windows) reflect the correct layout.

## Troubleshooting

### Intuiface host does not turn on

A manual power on may be required. Locate a short Phillips bit screwdriver and remove the ten (10) screws from the Corian housing.   

_It is recommended that one person holds the lid while another removes the screws_.

The host is mounted on the right side of the inner plate, with the power button facing towards the wall. Press the power button to boot the host. After confirming that a normal startup had been achieved, restore the Corian lid. Set the system to extended display mode if necessary (see above).

### Replacing system components

Refer to the connection diagrams for information on replacing cables, peripherals, etc.

### Changing scheduled startup and shutdown times

All Intuiface hosts will automatically start up at 6AM and shut down at 1AM, daily. It is unlikely that you will need to adjust these settings, but should you need to make chances to the automated startup and shut down times of the Intuiface hosts, here is the order of operations.  

Automated Startup times are set in the BIOS of each host machine. To edit the time at which a host machine shuts down:  

- Access the host machine with the corresponding wireless keyboard/trackpad
- Press ESC to stop Intuiface
- Press Ctrl+Alt+Del
- Select Reboot from the Power icon in the lower right corner
- When the host machine reboots and you see the “NUC” screen, press the F2 key (FN+F2) to access the BIOS page.
- Click the Power tab
- Click Advanced Power Settings
- Scroll down to the “Wake on S5 Event” entry and chance the value from “6” to whatever you like. Note: this setting uses 24-hour clock time.  

Press the F10 key (FN+F10) to save and exit. The machine will reboot and enter a normal operating mode.  

Automated shut down events on the Intuiface interactives are set in Task Scheduler. To edit the time at which a host machine shuts down:  

- Access the host machine with the corresponding wireless keyboard/trackpad
- Press ESC to stop Intuiface
- Press Ctrl+Alt+Del
- Select Logout
- When you reach the login screen, select SP-Admin as the user and enter the admin password.
- When you reach the Desktop, click search from the Start menu and enter ‘Task Scheduler’
- The event named ‘Shutdown’ exists in the main user event library.
- You may edit the start time of the event to occur earlier or later in the day.
- __Do not__ change any other settings.
- Exit Task Scheduler and reboot the host machine to return to normal operating mode.
