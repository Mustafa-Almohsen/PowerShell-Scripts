# Prompt the user to enter the average fuel consumption in liters per 100 kilometers
$fuel = read-host "Enter the average fuel consumption of your car in liters per 100 kilometers"

# Prompt the user to enter the distance to be traveled in kilometers
$kilo = read-host "Enter the distance to be traveled in kilometers"

# Calculate the total fuel consumption for the given distance
$result = ($fuel / 100) * $kilo

# Output the result: total fuel consumption and distance traveled
Write-output "`n$result liters for $kilo kilometers."

# Prompt the user to press any key before exiting
read-host "Press any key to exit"





Go to Go to https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_arithmetic_operators?view=powershell-7.1.

Expalin..

I first created a variable that asks the user "Enter the average fuel consumption of your car
in liters per 100 km"
• I then created a variable that asks the user "Enter the distance to be driven in kilometers"
• I then created a $result variable that calculates the fuel consumption given the given data
by
• Finally, the script prints on the screen the fuel consumption in liters for the given distance
• The script remains on the screen until the user presses a key
7.1

