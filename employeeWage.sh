echo "Welcome to Employee Wage Computation Program"
echo "Daily wage of Employee"
read -p "Enter wage per hour(can be assumed as 20) " wg
read -p "Enter full day hour(can be assumed as 8) " f
read -p "Enter part time hour (can be assumed as 4)" h
read -p "Enter no of working days in month (can be assumed as 20) " d
read -p "Enter no of working hours (can be assumed as 100)" w

br=1
while [ $br -eq 1 ]
do
case $randomCheck in
        1)  hoursPerDay=$f ;;
        2)  hoursPerDay=$h ;;
        *)  hoursPerDay=0  ;;
        esac

	if [[ $workingHours -eq $w ]] || [[ $days -eq $d ]]
        then br=0 break
	else
	randomCheck=$(( RANDOM%3 ))
	dailyWage=$(( wg * hoursPerDay ))
	totalWage=$(( totalWage + dailyWage ))
	workingHours=$(( workingHours + hoursPerDay ))
	((days++))
	fi
done
echo "Total Wage = $totalWage"
