
echo "Welcome to Flip Coin Simulation Problem"

#UC1
echo "As a Simulator start with Flipping a Coin to Display Heads or Tails as winner - Use ((RANDOM)) to find Heads or Tails"
heads=0
tails=0
no=$((RANDOM%2))
if [ $no -eq 1 ]
then
	echo "Heads win "
else
        echo "Tails win"
fi

#U2
echo "As a simulator, loop through Multiple times of flipping a coin and show number of times head and tail has won"
for((i=1;i<5;i++))
do
        no=$((RANDOM%2))
        if [ $no -eq 1 ]
        then
                echo "Heads win"
        else
                 echo "Tails win"
        fi
done

#UC3
echo "Modify the earlier UC 2 to continue till either of them have won 21 times. Show if it’s a Win or Tie. If Win then who won and by how much"
for((i=1;i<60;i++))
do
        no=$((RANDOM%2))
        if [ $no -eq 1 ]
        then
                (( heads ++ ))
                echo "Head count: $heads"
        else
                 (( tails ++ ))
                 echo "Tail count: $tails"
        fi
        if [ $heads -eq 21 ]
        then
                echo "Heads win"
                break
        elif [ $tails -eq 21 ]
        then
                echo "Tails win"
                break
        fi

done

