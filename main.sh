#!/bin/bash
shopt -s nullglob

main=(EMPTY EMPTY emulationstation kodi ./java.sh EMPTY EMPTY EMPTY EMPTY EMPTY EMPTY EMPTY EMPTY)
items=(~/java/*)
x=0;





engine()
{
	echo "╔═════════════════════════════════════════════════════════════╗"
	echo "║ ╔══ ╔══ ║  ║ ╔═╦═╗ ╔══╗ ╔══ ║ ╱  ║ ║ ║ ╔══╗ ╔══╗ ╔═══       "
	echo "║ ╚═╗ ║   ╠══╣ ║ ║ ║ ║  ║ ║   ║╱   ║ ║ ║ ╠══╣ ╠══╝ ╠═══       "
	echo "║ ══╝ ╚══ ║  ║ ║ ║ ║ ╚══╝ ╚══ ║╲   ╚═╩═╝ ║  ║ ║╲   ╚═══  v0.1"     
	echo "║ ════════════════════════════║ ╲  ═════════  ║ ╲ ═══════════     "
	echo "║                                                         "
	echo "║ ${main[$x-3]}"
	echo "║ ${main[$x-2]}"
	echo "║ ${main[$x-1]}"
	echo "║ ╔═════════════════════════════════════════════════════╗"
	echo "║ ║${main[$x]}"
	echo "║ ╚═════════════════════════════════════════════════════╝"
	echo "║ ${main[$x+1]}"
	echo "║ ${main[$x+2]}"
	echo "║ ${main[$x+3]}"
	echo "╚═════════════════════════════════════════════════════════════╝"
echo cpu= `top -b -n1 | grep "Cpu(s)" | awk '{print $2 + $4}'`"%"
vcgencmd measure_temp
}

up() 
{
	clear;
	((x--))
	engine
	read -rsn1 key2
	case $key2 in
		'') "${main[$x]}" ;;
	esac
}

down() 
{
	clear;
	((x++))
	engine
	read -rsn1 key2
	case $key2 in
		'') "${main[$x]}" ;;
	esac
}


#for ((i=0; i<${#main[@]}; i++)); do
#    echo "${main[$i]}"
#done


while [ 1 ]
do
	read -rsn2 key

	case $key in
		'q') echo quit ; exit ;;
		'[A') up ;;
		'[B') down ;;
		
	esac
	
	
done
