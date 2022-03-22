#!/bin/bash

loops=100
zero=0
one=0
two=0

for ((i=0; i<$loops; i++))
do
	num=$(od -A n -t d -N 2 /dev/urandom |tr -d ' ')
	num=$((num % 3))
	if [ $num -eq 0 ]; then
		# zero=$((zero + 1))
		((zero++))
	elif [ $num -eq 1 ]; then
		((one++))
	else
		((two++))
	fi
done

echo "0: ${zero}, 1: ${one}, 2: ${two}"