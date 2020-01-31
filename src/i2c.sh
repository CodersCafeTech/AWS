#!/bin/bash
counter=1
while [ $counter -le 10 ]
do
	MP=$(( $(i2cget -y -a 1 0x5d 0x1A)))
	let "n1 = $(($MP*(2**14)))"
	LP=$(( $(i2cget -y -a 1 0x5d 0x1B)))
	let "n2 = $(($LP*(2**6)))"
	LSP=$(( $(i2cget -y -a 1 0x5d 0x1B)))
	let "n3 = $(($LSP))"
	let "n4 = $n1+$n2+$n3"
	let "p=($n4/2048)"
	echo "Pressure : $p hPa"

	MT=$(( $(i2cget -y -a 1 0x5d 0x1D)))
	let "n5 = $(($MT*(2**8)))"
	LT=$(( $(i2cget -y -a 1 0x5d 0x1E)))
	let "n6 = $(($LT))"
	let "n7 = $n5+$n6"
	let "t=($n7/32)"
	echo "Temperature: $t *c "
	
	sleep 3s

	
done
