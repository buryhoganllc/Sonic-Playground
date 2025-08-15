# Intuiface Host Setup Instructions - automatic login and Player launch

## Dual-display interactive systems

### 12/31/24 B. Hogan

---

### Intel NUC hosts

#### POWER

- Disable Fast Start in Control Panel>Power Options  
- In BIOS, set `S5` state power on schedule (XX:XXAM daily)  

#### LOGIN

- "sp-show" user set for automatic login  
- Registry Edit: enter `HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\WindowsNT\CurrentVersion\PasswordLess\Device.`
- click `DevicePasswordLessBuildVersion`
- change value from `2` to `0`
- Save  
- run `netplwiz`  
- uncheck `"Users must enter name and password to use this computer."`
- Save  

#### LAUNCH

- Create regedit event for automated program launch in extended display mode:  
- Registry Edit - String Value added at:  `HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows NT\CurrentVersion\WinLogon`
- Value name: `"Shell"`
Value (including quotes): `"C:\Program Files\Intuilab\Intuiface\Player\IntuifacePlayerApp.exe" /extendeddisplay /playLastExperience`

#### EVENTS

- Create "shutdown" task in sp-admin (Task Scheduler) to shutdown the machine at XX:XXPM daily.  
- Run a program: `C:\Windows\System32\shutdown.exe`
- Arguments: `-s -f -t 0`
- Allow event run without user being logged in  
- Run with highest privileges  
