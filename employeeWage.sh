echo "Welcome to Employee Wage Computation Program"
isPresent=1
randomCheck=$(( RANDOM%2 ))
if [ $isPresent -eq $randomCheck ]
then
        echo "Employee is present"
else
        echo "Not present"
fi

echo "Daily wage of Employee"
read -p "Enter wage per hour(can be assumed as 20) " wg
read -p "Enter full day hour(can be assumed as 8) " f
read -p "Enter part time hour (can be assumed as 4)" h

dailyWage=$(( wg * f))
echo "DailyWage=$dailyWage"
