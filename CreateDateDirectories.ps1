# Set the initial value for the variable $years to 2010
$years = 2010
# Set the initial value for the variable $months to 1
$months = 1
# Set the initial value for the variable $days to 1
$days = 1

# Iterate through each year from 2010 to 2015
foreach ($a in $years..2015) {
    # Create a new directory for the current year
    New-Item -ItemType Directory $a

    # Iterate through each month from January to December
    foreach ($b in $months..12) {
        # Create a new directory for the current month inside the year directory
        New-Item -ItemType Directory "$a\$b"

        # Iterate through each day from 1 to 31
        foreach ($c in $days..31) {
            # Create a new directory for the current day inside the month directory
            New-Item -ItemType Directory "$a\$b\$c"
        }
    }
}
