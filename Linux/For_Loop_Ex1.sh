#!bin/bash
#help
#list variables

months=(
        'January'
        'Feburary'
        'March'
        'April'
        'May'
        'June'
        'July'
        'August'
        'September'
        'October'
        'November'
        'December'
)

days=(mon tues wed thurs fri sat sun)

#print out months

for variable in ${months[@]};
do 
        echo $variable
done

for day in ${days[@]}
do
	if [ $day = 'sun' ] || [ $day = 'sat' ]
	then
	  echo "It is $day. Take it ease."
	else
	echo "It is $day. Get to work!"
	fi
done

for file in $(ls);
do
	ls -lah $file
done
