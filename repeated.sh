#! bin/bash -x
for (( Cnt=10; $Cnt<100; Cnt=$((Cnt+1)) ))
do

	cnt=$Cnt

	ans=$((cnt%10))
	Sum=$((ans*10))	
	cnt=$((cnt/10))
	Add=$((Sum+cnt))


	if (( $Add==$Cnt ))
	then
		Twice_Arr[$i]=$Cnt
		i=$((i+1))
	fi

done
echo ${Twice_Arr[*]}
