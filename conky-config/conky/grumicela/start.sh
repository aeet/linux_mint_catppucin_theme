#!/bin/bash

killall conky
sleep 2s
		
conky -c $HOME/.config/conky/grumicela/Celaeno.conf &> /dev/null &
conky -c $HOME/.config/conky/grumicela/Grumium2.conf &> /dev/null &

exit
