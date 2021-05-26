#! /bin /bash -x

coinResult=$((RANDOM%2))
if [ $coinResult -eq 0 ]
then
	echo "Heads"
else
	echo "Tails"
fi
