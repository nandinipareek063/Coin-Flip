
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
