#!/bin/bash

#echo $1
#echo $2

# Blank console before advmame takes over
printf '\033[2J\033[H' > /dev/tty1

game="${1,,}"
if [ -n "$2" ]; then
#   echo "Custom Command Selected"
   cd /usr/local/share/advance
   ./${1}_${2} 2> /dev/null
elif [[ $game == *.vec ]] || [[ $game == *.gam ]] || [[ $game == *.bin ]]
then
#   echo "Vectrex Game Selected"
#   echo "Command Line: /usr/local/bin/advmess vectrex -cart \"$1\""
   /usr/local/bin/advmess vectrex -cart "$1"
else
#    echo "Mame Game Selected"
#    echo "Command Line: /usr/local/bin/advmame $1"
    /usr/local/bin/advmame $1
fi

# Blank console again when advmame exits
printf '\033[2J\033[H' > /dev/tty1

