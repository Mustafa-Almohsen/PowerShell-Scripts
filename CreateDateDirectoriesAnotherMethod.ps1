# Prompt the user to enter years separated by commas (yyyy, yyyy, ....)
$years = Read-Host "Enter years separated by commas (yyyy, yyyy, ....)"

# Split the input into an array of individual years
$yearArray = $years -split ','

# Set the range of months from 1 to 12
$months = 1..12

# Set the range of days from 1 to 31
$days = 1..31

# Iterate through each year in the year array
foreach ($i in $yearArray) {
    # Create a new directory for the current year
    New-Item -ItemType Directory $i

    # Iterate through each month from 1 to 12
    foreach ($b in $months) {
        # Create a new directory for the current month inside the year directory
        New-Item -ItemType Directory "$i\$b"

        # Iterate through each day from 1 to 31
        foreach ($c in $days) {
            # Create a new directory for the current day inside the month directory
            New-Item -ItemType Directory "$i\$b\$c"
        }
    }
}
