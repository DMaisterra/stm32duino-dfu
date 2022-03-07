echo "Port ttyACMx <- 0,1,2"
echo "enter value"
read nb
PORT="/dev/ttyACM"$nb
for ((i=1;i<=50;i++)); do
	let "DELAY = 50 * i + 1500"
	echo "DELAY = $DELAY"
	~/.arduino15/packages/stm32duino/tools/stm32tools/2021.5.31/linux/upload-reset $PORT $DELAY
	~/.arduino15/packages/stm32duino/tools/stm32tools/2021.5.31/linux/dfu-util/dfu-util -l
	
	COUNTER=0
	while [ ! -r $PORT ] && ((COUNTER++ < 40)); do
		sleep 0.1
	done
done
