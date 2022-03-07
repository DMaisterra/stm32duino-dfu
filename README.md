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
to match those. This could happrn by a manual value change
to maple_upload file.
change:
NEW|OLD values every time executing in Mtu.changes.sh script, till I modify for ask values-

If working with another repo boards, can change destination of upload-reset and dfu-util places, for Mtu.changes.sh.
When choosing values, recommend firsts "ms" of Mtu.detects.sh output.
-----Working patch when arduino wont detect dfu device error-----


Recommended install all lastests boards libraries, m0, m3, and stm32... Choosing older boards defs dive into other errors.
