# PowerShell-Scripts

This simple script to get the current date.
- The variable is the current date and time
- Prints the value of this variable on the screen
- The script remains on the screen until the user presses a key

Explain....

(Get-Date).DateTime retrieves the current date and time using the Get-Date cmdlet.

The (Get-Date) expression returns a DateTime object, and .DateTime property is used to extract the date and time value as a string.

The resulting date and time value is stored in the $Today variable.

The value of the $Today variable is then printed to the console using the $Today command.

Read-Host 'Press enter to exit' displays the prompt message 'Press enter to exit' and waits for the user to press the enter key. 
This allows the script to pause and wait for user input before exiting.
