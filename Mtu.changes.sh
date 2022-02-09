#modificar a -j1

cd ~/.arduino15/packages/stm32duino/tools/stm32tools/2021.5.31/linux

OLD="${dummy_port_fullpath} 1600"
NEW="${dummy_port_fullpath} 1800"
file=maple_upload

sed -i  "s|$OLD|$NEW|g" maple_upload

sudo chmod a+x maple_upload


