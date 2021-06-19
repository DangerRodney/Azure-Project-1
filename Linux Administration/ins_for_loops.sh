#!/bin/bash

#for <item> in <list>
#do
#  <command>
#  <command>
#done

#Example of loops

#!bin/bash

#list variables

months=(
	'Januart'
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

