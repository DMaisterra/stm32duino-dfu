stm32duino DFU MTU settings. Helps no reset chaos, helps no dfu found.

STM32 help scripts
Tested with "blue pill"
[works with or without r10 changed resistor,
actualize values to one or another] Depend in the board we are talking, you need to press reset button to get the detect values (very simply), or mostly any board. 
Think not live in caos resets paterns. It fix this exactly too. At the end of config with this all, forget the reset chaos.

.o. Could be messy, in detection, pressing one time the reset button and executes detection instantanously again. <-This is goood..

.o. Innstead of doble executing detetion...use it to upload sketch. In that case could upload the program raw to a wrong adress memory -> bricked.


git clone

cd stm32duino_dfu_mtu_setting

sudo chmod a+x+w *


in directory,
to work with linux, no COM, just ttyACMx ports

and the dan stm32duino boards definition "http://dan.drown.org/stm32duino/package_STM32duino_index.json"


to work:
./Mtu.detects.sh 
take the firsts "ms" values, 
./Mtu.changes.sh 
enter this value in the command promt.
to change to a new value, repeat.
old value has to coincide with value of Mtu.value.sh
if not change the TAINE value in changes script
to match those. This could happen by a manual value change
to maple_upload file.
change:
If working with another repo boards, can change destination of upload-reset and dfu-util places, to Mtu.changes.sh.
When choosing values, recommend firsts "ms
-----Working patch when arduino wont detect dfu device error-----


Recommended install all lastests arduino boards libraries, m0, m3, and stm32... Choosing older boards defs dive into other errors.
