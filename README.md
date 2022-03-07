STM32 help scripts
Tested with "blue pill"
[works with or without r10 changed resistor,
actualize values to one or another]


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
