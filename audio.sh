#!/bin/bash
shopt -s nullglob

items=(mp3/*)
x=0;



engine()
{
	echo "╔═════════════════════════════════════════════════════════════╗"
	echo "║ audio plugin 0.1b"
	echo "║ ═════════════════════════════════════════════════════════════"
	echo "║                                                         "
	echo "║ ${items[$x-3]}"
	echo "║ ${items[$x-2]}"
	echo "║ ${items[$x-1]}"
	echo "║ ╔═════════════════════════════════════════════════════╗"
	echo "║ ║${items[$x]}"
	echo "║ ╚═════════════════════════════════════════════════════╝"
	echo "║ ${items[$x+1]}"
	echo "║ ${items[$x+2]}"
	echo "║ ${items[$x+3]}"
	echo "╚═════════════════════════════════════════════════════════════╝"
}

clear;
engine

up() 
{
	clear;
	((x--))
	if [ $x == -2 ]
	then
		((x++))
	fi
	engine
	read -rsn1 key2
	case $key2 in
		'') mpg123 "${items[$x]}" ;;
	esac
}

down() 
{
		clear;
	((x++))
	engine
	read -rsn1 key2
	case $key2 in
		'') mpg123 "${items[$x]}" ;;
	esac
}

MAIN() 
{
	./main.sh
}





while [ 1 ]
do
	read -rsn2 key

	case $key in
		'q') echo quit ; exit ;;
		'[A') up ;;
		'[B') down ;;
		'[D') MAIN ;;
		
	esac

	
done
