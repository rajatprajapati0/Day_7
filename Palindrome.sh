#!/bin/bash -x

function palindrome_prime_check(){
	read -p "enter a number " num
s=0
rev=0
temp=$num
while [ $num -gt 0 ]
do

    s=$(( $num % 10 ))

    num=$(( $num / 10 ))

    rev=$(($rev * 10 + $s))
done

if [ $temp -eq $rev ];
then
    echo "Number is palindrome"
else
    echo "Number is NOT palindrome"
fi
if [ $(($temp%2)) -eq 0 ]
then 
	echo "$temp is not a prime number"
else
	echo "$temp is a prime number"
fi
}
 palindrome_prime_check
