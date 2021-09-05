#!/bin/bash
shopt -s nullglob

items=(~/java/*)
x=0;

engine()
{
	echo " ╔══ ╔══ ║  ║ ╔═╦═╗ ╔══╗ ║ ╱  ║ ║ ║ ╔══╗ ╔══╗ ╔═══  "
	echo "╔══ ╔══ ║  ║ ╔═╦═╗ ╔══╗ ║ ╱  ║ ║ ║ ╔══╗ ╔══╗ ╔═══  "
	echo "╚═╗ ║   ╠══╣ ║ ║ ║ ║  ║ ║╱   ║ ║ ║ ╠══╣ ╠══╝ ╠═══"
	echo "══╝ ╚══ ║  ║ ║ ║ ║ ╚══╝ ║╲   ╚═╩═╝ ║  ║ ║╲   ╚═══"
	echo "════════════════════════║ ╲  ═════════  ║ ╲ ═══════  "
	echo ""
	echo "${items[$x-3]}"
	echo "${items[$x-2]}"
	echo "${items[$x-1]}"
	echo "╔═════════════════════════════════════════════════╗"
	echo "║${items[$x]}"
	echo "╚═════════════════════════════════════════════════╝"
	echo "${items[$x+1]}"
	echo "${items[$x+2]}"
	echo "${items[$x+3]}"
}

up() 
{
	clear;
	((x++))
	engine
	read -rsn1 key2
	case $key2 in
		'') java "${items[$x]}" ;;
	esac
}

down() 
{
	clear;
	((x--))
	engine
	read -rsn1 key2
	case $key2 in
		'') java "${items[$x]}" ;;
	esac
}


for ((i=0; i<${#items[@]}; i++)); do
    echo "${items[$i]}"
done


while [ 1 ]
do
	read -rsn2 key

	case $key in
		'q') echo quit ; exit ;;
		'[A') up ;;
		'[B') down ;;
		
	esac
done
