#! /bin /bash -x

declare -A singlet
count=0
headCount=0
tailCount=0
echo "Enter the number till which you want to run the loop: "
read num
for(( i=1;i<=${num};i++ ))
do
	coinResult=$((RANDOM%2))
	if [ $coinResult -eq 1 ]
	then
		headCount=$((headCount + 1))
		singlet[$i]="H"
	else
		tailCount=$((tailCount + 1))
		singlet[$i]="T"
	fi
	#dictionary[$count"]=$coinResult
	#count=$((count+1))
done
echo ${singlet[*]}
echo "The total head count in singlet dictionary is : $headCount"
echo "The total tail count in singlet dictionary is : $tailCount"
headCountPercent=`echo "scale=2;($headCount*100)/$num" | bc`
tailCountPercent=`echo "scale=2;($tailCount*100)/$num" | bc`
echo "The percentage of head winning in singlet dictionary is : $headCountPercent %"
echo "The percentage of tails winning in singlet dictionary is : $tailCountPercent %"
