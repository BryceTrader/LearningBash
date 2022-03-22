#!/bin/bash

rock() {
	if [ $cpuCHOICE = "Paper" ]; then
		loseCondition
	elif [ $cpuCHOICE = "Scissors" ]; then
		winCondition
	else
		drawCondition
	fi
}

paper() {
	if [ $cpuCHOICE = "Scissors" ]; then
		loseCondition
	elif [ $cpuCHOICE = "Rock" ]; then
		winCondition
	else
		drawCondition
	fi
}

scissors() {
	if [ $cpuCHOICE = "Rock" ]; then
		loseCondition
	elif [ $cpuCHOICE = "Paper" ]; then
		winCondition
	else
		drawCondition
	fi
}

winCondition() {
	echo "You win!"
	playAgain
}

loseCondition() {
	echo "You lose!"
	playAgain
}

drawCondition() {
	echo "Draw!"
}

playAgain() {
	read -p "Would you like to play again? " INPUT
	case $INPUT in
		y|Y|[yY][eE][sS])
			;;
		n|N|[nN][oO])
			PLAY=0
			;;
	esac
}

OPTIONS=('Rock' 'Paper' 'Scissors')
echo "Let's play Rock, Paper, Scissors!"
PLAY=1

while [[ PLAY -eq 1 ]]
do
	index=$(od -A n -t d -N 2 /dev/urandom |tr -d ' ')
	index=$((index % 3))
	echo $index
	cpuCHOICE=${OPTIONS[$index]}
	echo $cpuCHOICE

	read -p "Please enter your choice: " CHOICE
	case $CHOICE in
		r|R|[rR][oO][cC][kK])
			rock
			;;
		p|P|[pP][aA][pP][eE][rR])
			paper
			;;
		s|S|[Ss][cC][iI][sS][sS][oO][rR])
			scissors
			;;
	esac
done