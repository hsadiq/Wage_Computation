echo "Welcome to Employee Wage Computation Program!"

# UC-1: Employee Attendance
function employeeAttendance() {
    # Constants
    IS_PRESENT=1
    attendance=$(( RANDOM % 2 ))

    # Check if employee is present or absent
    if [ $attendance -eq $IS_PRESENT ]
    then
        echo "Employee is present"
    else
        echo "Employee is absent"
    fi
}

# UC-2: Daily Employee Wage Calculation
function calculateDailyWage() {
    # Constants
    WAGE_PER_HOUR=20
    FULL_DAY_HOURS=8

    # Variables
    wage=0

    # Calculate wage for full day
    wage=$(( WAGE_PER_HOUR * FULL_DAY_HOURS ))

    echo "Daily wage for full day is $wage"
}

# UC-3: Add Part-time Employee & Wage Calculation
function addPartTimeEmployee() {
    # Constants
    WAGE_PER_HOUR=20
    FULL_DAY_HOURS=8
    PART_TIME_HOURS=4

    # Variables
    wage=0
    attendance=$(( RANDOM % 3 ))

    # Check attendance and calculate wage accordingly
    case $attendance in
        0)
            echo "Employee is absent"
            ;;
        1)
            wage=$(( WAGE_PER_HOUR * FULL_DAY_HOURS ))
            echo "Employee is present (full time) with wage $wage"
            ;;
        2)
            wage=$(( WAGE_PER_HOUR * PART_TIME_HOURS ))
            echo "Employee is present (part time) with wage $wage"
            ;;
    esac
}

# Call the appropriate function based on the input argument
case $1 in
    employeeAttendance)
        employeeAttendance
        ;;
    calculateDailyWage)
        calculateDailyWage
        ;;
    addPartTimeEmployee)
        addPartTimeEmployee
        ;;
    *)
        echo "Invalid input argument"
        ;;
esac
