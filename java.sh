#!/bin/bash
shopt -s nullglob

main=(main1, main2, main3, main4, main5)
items=(~/java/*)
x=0;



engine()
{
	echo "╔═════════════════════════════════════════════════════════╗"
	echo "║ JJJJJ AAAA V  V AAAA"
	echo "║    JJ A  A V  V A  A"
	echo "║    JJ AAAA V  V AAAA"
	echo "║  JJJ  A  A  VV  A  A"   
	echo "║ ════════════════════════════════════════════════════════"
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
	echo "╚═════════════════════════════════════════════════════════╝"
}

up() 
{
		clear;
	((x--))
engine
	read -rsn1 key2
	case $key2 in
		'') java "${items[$x]}" ;;
	esac
}

down() 
{
		clear;
	((x++))
	engine
	read -rsn1 key2
	case $key2 in
		'') java "${items[$x]}" ;;
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
