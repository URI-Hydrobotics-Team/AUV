# Tracker 650 DVL

## Usable commands for the DVL

| Command | Serial | Ethernet | Sticky* | Notes | Expect Usage? |
| -------- | ------- | ------- | ------- | ------- | ------- | 
| [Configuration](README.md#configuration) | X | X | _ | Send the current config | No |
| [MAVLINK-AUTO-ORIGIN](README.md#MAVlink-auto-configuration) | X | X | X | Turn on/off the auto MAVlink origin message | No |
| [SET-SPEED-OF-SOUND](README.md#set-speed-of-sound) | X | X | X | Set speed of sound in the body of water | Yes |
| [SET-VELOCITY-ADJUSTMENT](README.md#set-velocity-adjustment) | X | X | X | Set global adjustment to measured velocity | No |
| [SET-POOL-MODE](README.md#set-pool-mode) | X | X | X | Turns pool mode on/off | Yes |
| [SEND-DVPDL](README.md#send-dvpdl) | X | X | X | Turn on/off position delta message | Yes |
| [SEND-DVPDX](README.md#send-dvpdx) | X | X | X | Turn on/off extended position delta message | Yes |
| [SEND-DVKFC](README.md#send-dvkfc) | X | X | X | Turn on/off $DVKFC message | Yes |
| [SEND-MAVLINK-DISTANCE](README.md#send-mavlink-distance) | X | X | X | Enables sending the MAVlink distance message if enabled | No |
| [SET-POSITION](README.md#set-position) | X | X | _ | Passes the supplied position to the MAVlink interface if enabled | No |
| [SET-SENSOR-ORIENTATION](README.md#set-sensor-orientation) | X | X | X | Set mounting orientation of the DVL respect to AUV coordinate frame | Yes |
| [IP-ADDRESS](README.md#ip-address) | X | X | X |  Set/delete a static ip for the DVL | Yes |
| [HOST-ADDRESS](README.md#host-address) | X | X | X | Set IP of host device | Yes |
| [MAVLINK-ADDRESS](README.md#mavlink-address) | X | X | X | Set IP and port for MAVlink REST server. Setting to 0.0.0.0 disables MAVlink | No |
| [FALLBACK-ADDRESS](README.md#fallback-address) | X | X | X | Set fallback IP for DVL | Yes |
| [UNICAST-TO-ME](README.md#unicast-to-me) | _ | X | _ | Change broadcast to unicast | Yes |
| [PAUSE](README.md#pause) | X | X | _ | Suspends pinging and processing | Yes |
| [RESUME](README.md#resume) | X | X | _ | Resumes pinging and processing | Yes |
| [REBOOT](README.md#reboot) | X | X | _ | Restart if powered on | Yes |
| [(PING)](README.md#ping) | _ | X | _ | Ethernet IC message protocol ping | Yes |

### CONFIGURATION

Casues the DVL tosend its current config as a $DVNVM message followed by 0+ freeform ASCII-formatted lines. Anything sent to the DVL starting with a '?' is also treated as a config command. 

Example:
```bash
?

Configuration
```

Example Output:

```bash
=========== Tracker 650 ============ 

$DVNVM,Model=Tracker 650,Static IP address=0.0.0.0,Fallback IP address=192.168.2.3,
Host IP address=192.168.2.2:27000,MAVlink IP address=192.168.2.2:6040,
DVKFC messages=ON,Speed of sound=1484.0,Velocity adjustment=1.000,
DVPDL messages=OFF,DVPDX messages=ON,MAVlink send distance=ON,Firmware=Jun 15 2023,*59

MAVlink status: Disabled due to fatal connection error

Baseline IMU connected
Ethernet link is UP
Got DHCP reply TRUE
Using local IP address 10.0.3.30:50000
Using host IP address 255.255.255.255:27000
Static local IP address: 0.0.0.0
Declination set to 5.1
Coordinate frame mode = WORLD

```

### MAVLINK-AUTO-ORIGIN

Sets the ability to send a SET_GPS_GLOBAL_ORIGIN to the ROV MAVlink REST server. Stored in flash memory.

Example:
```bash
MAVLINK-AUTO-ORIGIN ON

MAVLINK-AUTO-ORIGIN OFF
```

### SET-SPEED-OF-SOUND

Sets speed of sound in body of water. Accepts between 1,100 & 1,950 m/s stored in flash memory.

Example:
```bash
SET-SPEED-OF-SOUND 1500
```

### SET-VELOCITY-ADJUSTMENT

Set overall global adjustment in measured velocity. It is measured at each transducer and multiplied by the velocity adustment value before being used in any calculation. It accepts values between 0.8 and 1.25 (inclusive) stored in flash.

Example:
```bash
SET-VELOCITY-ADJUSTMENT 1.001
```

### SET-POOL-MODE

Sets pool mode on and off. Should be used when the ROV is in a pool or other confined space. Important because 2nd or higher-order reflections could have larger power then the original reflection. Stored in flash.

Example:
```bash
SET-POOL-MODE ON

SET-POOL MODE OFF
```

### SEND-DVPDL

Turns DVPDL message sending off/on. Persistent across power cycles. 

Example:
```bash
SEND-DVPDL ON

SEND-DVPDL OFF
```

### SEND-DVPDX

Sets DVPDX message sending off/on. Persistent across power cycles. 

Example:
```bash
SEND-DVPDX ON

SEND-DVPDX OFF
```

### SEND-DVKFC

Sets DVKFC message sending off/on. Persistnet across power cycles. 

Example:

```bash
SEND-DVKFC ON

SEND-DVKFC OFF
```

### SEND-MAVLINK-DISTANCE

Enables/disables MAVlink distance messages if MAVlink is enabled. Persistent across power cycles. 

Example:
```bash
SEND-MAVLINK-DISTANCE ON

SEND-MAVLINK-DISTANCE OFF
```

### SET-POSITION

Current latitude and longitude in multiple formats. I suggest using SET-POSITION regular message versus a GPRMC message. The DVL recognizes decimal degree format, degree deimal minute format, degree minute second format. DD is similar to google maps GPS. DDM is used by most marine GPS systems.

Example:
```bash
DD: SET-POSITION 44.234023,-93.381933

DDM: SET-POSITION 44 18.281712 N, 93 31.103817 W

DMS: SET-POSITION 44 18 10N, 93 31 03W
```

### SET-SENSOR-ORIENTATION

Sets sensor mounting orientation in respect to ROV coordinate frame. <\Roll> <\Pitch> <\Yaw> are given in degrees

Keep the order! roll, pitch, yaw

Example:
```bash
SET-SENSOR-ORIENTATION 0, 0, 90
```

### IP-ADDRESS

Stores or erases a static IP for the DVL during next boot-up. Settings to 0.0.0.0:0 erases current static IP, and will attempt to use DHCP, resorting to the fallback IP if DHCP fails. 

Example:
```bash
IP-ADDRESS 192.168.2.3

IP-ADDRESS 0.0.0.0
```

### HOST-ADDRESS

Stores IP of the host device and takes effect immediately. You can utilize the broadcast ip 255.255.255.255 when the host IP is unknown or want multiple hosts. A port must also be specified. The default host port is 27000.

Exmaple
```bash
HOST-ADDRESS 192.168.2.2:27000

HOST-ADDRESS 255.255.255.255:2700
```

### MAVLINK-ADDRESS

Stores IP and TCP port for the MAVlink REST server, taking effect next boot. The IP 0.0.0.0 will disable this.

Example:
```bash
MAVLINK-ADDRESS 192.168.2.2:6040

MAVLINK-ADDRESS 0.0.0.0:0
```

### FALLBACK-ADDRESS

Stores IP to fallback to on next boot. Only used in the case that no static IP is set and DHCP fails. Default fallback IP is 192.168.2.2

Example:
```bash
FALLBACK-ADDRESS 192.168.2.3
```

### UNICAST-TO-ME

Tells the DVL to stop sending broadcast UDP messages and swap to unicast. Use case: set the DVL to power up with a static host IP, if the host IP is not active, you can send a discovery command to find the DVL followed by the unicast command to swap output to yourself. 

Do not send to the serial port as it will be undefined.

Not persistent between power cycles. Make sure to set the host IP before power off. 

Example:
```bash
UNICAST-TO-ME
```

### PAUSE

Pauses any output and sensor processes except for accepting commands. Good to use when you want to reduce power consumption

Example:
```bash
PAUSE
```
### RESUME

Cancels any PAUSE that is in effect.

Example:
```bash
RESUME
```

### REBOOT

Resets processors and lets them restart after power up.

Example:
```bash
REBOOT
```

### Ping

The DVL responds to ICMP ping requests on ethernet. The DVL will attempt to register its name as 'dvl' if given an IP through DHCP. 

Example:
```bash
ping 192.168.2.3

ping dvl
```