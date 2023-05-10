# Set the initial value of the variable $Week to 1
$Week = 1

# Iterate through a range of values from $Week to 52
ForEach ($a in $Week..52)
{
  # Create a new directory with the name "week" followed by the value of $a
  New-Item -ItemType directory "week $a"
}
