# Calculate the number of days between the current date and a specified date (December 10, 2023)
$Date = ((Get-date) - (Get-date -Day 10 -Month 12 -Year 2023)).Days

# Output the number of days from now to Christmas
Write-Output "Days from now to Christmas: $Date!"

# Prompt the user to press enter before exiting
Read-Host "Press enter to exit"



-You should make a variable ($) whose value is the result of the calculation, where the date of Christmas Eve
subtract the current date.
- The script remains on the screen until the user presses a key.




