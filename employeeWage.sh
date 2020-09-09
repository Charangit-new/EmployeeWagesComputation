echo "Welcome to Employee Wage Computation Program"

echo "Daily wage of Employee"
read -p "Enter wage per hour(can be assumed as 20) " wg
read -p "Enter full day hour(can be assumed as 8) " f
read -p "Enter part time hour (can be assumed as 4)" h

hoursPerDay=0
randomCheck=$(( RANDOM%3 ))

if [ $randomCheck -eq 1 ]
then hoursPerDay=$f
elif [ $randomCheck -eq 2 ] 
then hoursPerDay=$h
else echo "Employee is absent"
fi

dailyWage=$(( wg * hoursPerDay ))
echo "DailyWage=$dailyWage"
