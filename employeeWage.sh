echo "Welcome to Employee Wage Computation Program"
echo "Daily wage of Employee"
read -p "Enter wage per hour(can be assumed as 20) " wg
read -p "Enter full day hour(can be assumed as 8) " f
read -p "Enter part time hour (can be assumed as 4)" h
read -p "Enter no of working days in month (can be assumed as 20) " d
i=0
while [ ! $i -ge $d ]
do
randomCheck=$(( RANDOM%3 ))
case $randomCheck in
        1)  hoursPerDay=$f ;;
        2)  hoursPerDay=$h ;;
        *)  hoursPerDay=0  ;;
        esac
dailyWage=$(( wg * hoursPerDay ))
totalWage=$(( totalWage + dailyWage ))
((i++))
done
echo "Total Wage = $totalWage"
