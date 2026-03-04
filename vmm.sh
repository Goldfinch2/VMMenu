#!/bin/bash

#echo $1
#echo $2

game="${1,,}"
if [ -n "$2" ]; then
   echo "Custom Command Selected"
   echo "Command Line: /usr/local/share/advance/${1}_${2}"
   /usr/local/share/advance/${1}_${2}
elif [[ $game == *.vec ]] || [[ $game == *.gam ]] || [[ $game == *.bin ]]
then
   echo "Vectrex Game Selected"
   echo "Command Line: /usr/local/bin/advmess vectrex -cart \"$1\""
   /usr/local/bin/advmess vectrex -cart "$1"
else
    echo "Mame Game Selected"
    echo "Command Line: /usr/local/bin/advmame $1"
    /usr/local/bin/advmame $1
fi
