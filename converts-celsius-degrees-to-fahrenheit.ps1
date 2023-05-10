$celsius = read-host "Enter the temperature to be converted in degrees Celsius"
$fahr = $celsius / 5 * 9 + 32
write-output "$celsius celsius Degree is $fahr Fahrenheit degree !"
read-host "press any key to exit"



Go to https://bit.ly/38RVgqb and check which mathematical formula celsius degrees
convert to degrees Fahrenheit

Here's the breakdown of the script:

1- $celsius = read-host "Enter the temperature to be converted in degrees Celsius"

This line prompts the user to enter a temperature in Celsius and stores the input in the variable $celsius.

2- $fahr = $celsius / 5 * 9 + 32

This line performs the conversion calculation from Celsius to Fahrenheit using the formula (Celsius / 5) * 9 + 32 and stores the result in the variable $fahr.

3- write-output "$celsius celsius Degree is $fahr Fahrenheit degree !"

This line outputs the converted temperature by combining the original Celsius value and the calculated Fahrenheit value using string interpolation.

4- read-host "press any key to exit"

This line prompts the user to press any key before exiting the script.
