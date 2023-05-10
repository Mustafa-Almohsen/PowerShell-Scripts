# Prompt the user to enter the device's power in watts
[float]$watt = read-host "Enter the device's power in watts"

# Prompt the user to enter the device's daily usage time in hours
[float]$hour = read-host "Enter the device's daily usage time in hours"

# Prompt the user to enter the electricity price in cents per kilowatt-hour
[float]$euro = read-host "Enter the electricity price in cents per kilowatt-hour"

# Calculate the daily energy consumption in kilowatt-hours
[float]$kwhr = $watt * $hour / 1000

# Calculate the daily cost in euros
[float]$dayeuro = $kwhr * $euro / 100

# Calculate the yearly cost in euros
[float]$yeareuro = $dayeuro * 365

# Output the daily energy consumption
Write-output "Daily consumption is $kwhr kilowatt-hours"

# Output the daily cost
Write-output "Daily cost is $dayeuro euros!"

# Output the yearly cost
Write-output "Yearly cost is $yeareuro euros!"

# Prompt the user to press enter before exiting
read-host "Press enter to exit"



Go to https://www.rapidtables.com/calc/electric/energy-cost-calculator.html  and 

check which formula is used to calculate the device's electricity consumption and price
• You can check the functionality of your script by comparing the results it gives with the counter in the link above
to the results given!
• Note! When you perform calculations with variables, it is worth specifying the Data type of the variables
during creation, in this case, a [float]$variable for this template

Explain..

• First, i created a variable that asks the user the power of the device in watts
• After that, i created a variable that asks the user the daily usage time of the device in hours
• After that, i created a variable that asks the user the price of electricity in cents per kilowatt hour. 