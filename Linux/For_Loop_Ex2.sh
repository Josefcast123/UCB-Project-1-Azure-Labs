#!bin/bash

#List of variables
nums=$(echo{0..9})
states=(
	'California'
	'New York'
	'Colorado'
	'Nevada'
	'Washington'
)
ls_out=$(ls)
suids=$(find / -type f -perm /4000 2> /dev/null)

#Create For Loops
#Print out a (for) loop


for num in ${nums[@]}
do
	if [ $num = 3] || {$ num = 5 ] || [ $num =7 ]
	then
	echo $num
fi
done

#create a loop that looks for 'Hawaii'

for state in ${state[@]}
do
        if [ $state == 'Hawaii' ];
        then
          echo "Hawaii is the best!"
	else
	  echo "I'm not a fan of Hawaii"
fi
done


for file in $(ls);
do
	ls -lah $file
done
