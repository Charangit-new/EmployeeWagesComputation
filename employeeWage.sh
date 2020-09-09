echo "Welcome to Employee Wage Computation Program"

echo "Daily wage of Employee"
read -p "Enter wage per hour(can be assumed as 20) " wg
read -p "Enter full day hour(can be assumed as 8) " f
read -p "Enter part time hour (can be assumed as 4)" h


random=$((RANDOM%3))
case $random in
        1)  hoursPerDay=$f ;;
        2)  hoursPerDay=$h ;;
        *)  hoursPerDay=0 ;;
        esac


dailyWage=$(( wg * hoursPerDay ))
echo "DailyWage=$dailyWage"
