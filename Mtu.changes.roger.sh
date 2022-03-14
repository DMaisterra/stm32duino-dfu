#!/bin/bash

echo NEW value
read NEw

echo Change username in sed lines of this batch  to match your own.



TAINE="${dummy_port_fullpath} 1600"
NEW="${dummy_port_fullpath} ${NEw}"
file=''



echo Valor anterior es: ${TAINE}. Monitorear cambio en Mtu.value.sh. Script no funcional si la  modificacion es manual.
echo Previous value: ${TAINE}. Monitor value in Mtu.value.sh if a manual change was made.

# TAINE="${dummy_port_fullpath} ${OLd}"
NEW="${dummy_port_fullpath} ${NEw}"
file=''


sed -i  "s|$TAINE|$NEW|g" /home/$USER/Arduino/hardware/Arduino_STM32/tools/linux/maple_upload


#export SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

export SCRIPT_DIR="$( cd -- "'$( dirname -- "${BASH_SOURCE[0]}" )'" &> /dev/null && /bin/pwd )"


echo $SCRIPT_DIR

sed -i  "s|$TAINE|$NEW|g" $SCRIPT_DIR"Mtu.changes.sh"

sudo chmod a+x  "/home/$USER/.arduino15/packages/stm32duino/tools/stm32tools/2021.5.31/linux/"maple_upload

sudo chmod a+x+w $SCRIPT_DIR"Mtu.changes2.sh"

