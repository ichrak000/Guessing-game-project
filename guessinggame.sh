#!/user/bin/env bash

function compter_fichers
{
    local nombre_reel=$(ls -l | grep "^-" | wc -l)
    echo $nombre_reel
}

NOMBRE_CIBLE=$(compter_fichers)
devinette=-1

echo"Welcome to the game :) "

while [[ $devinette -ne $NOMBRE_CIBLE ]]
do

echo ""
echo "how many files are there in this repostory??? :O "
read devinette

if [[ $devinette -lt $NOMBRE_CIBLE ]]; then 
echo "too loooow, try again";

elif [[ $devinette -gt $NOMBRE_CIBLE ]]; then
echo "too hiiigh, try again"; 

elif [[ $devinette -eq $NOMBRE_CIBLE ]]; then
echo ""
echo "Congratulations you did iiiit :D    |   the right number is: $NOMBRE_CIBLE."
fi

done
