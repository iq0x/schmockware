#!/bin/bash
shopt -s nullglob

arr=(~/java/*)
x=0;

engine()
{
	echo " ╔══ ╔══ ║  ║ ╔═╦═╗ ╔══╗ ║ ╱  ║ ║ ║ ╔══╗ ╔══╗ ╔═══  "
	echo "╔══ ╔══ ║  ║ ╔═╦═╗ ╔══╗ ║ ╱  ║ ║ ║ ╔══╗ ╔══╗ ╔═══  "
	echo "╚═╗ ║   ╠══╣ ║ ║ ║ ║  ║ ║╱   ║ ║ ║ ╠══╣ ╠══╝ ╠═══"
	echo "══╝ ╚══ ║  ║ ║ ║ ║ ╚══╝ ║╲   ╚═╩═╝ ║  ║ ║╲   ╚═══"
	echo "════════════════════════║ ╲  ═════════  ║ ╲ ═══════  "
	echo ""
	echo "${arr[$x-2]}"
	echo "${arr[$x-1]}"
	echo "-> ${arr[$x]}"
	echo "${arr[$x+1]}"
	echo "${arr[$x+2]}"
}

up() 
{
	clear;
	((x++))
	engine
	read -rsn1 key2
	case $key2 in
		'') java "${arr[$x]}" ;;
	esac
}

down() 
{
	clear;
	((x--))
	engine
	read -rsn1 key2
	case $key2 in
		'') java "${arr[$x]}" ;;
	esac
}


for ((i=0; i<${#arr[@]}; i++)); do
    echo "${arr[$i]}"
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
