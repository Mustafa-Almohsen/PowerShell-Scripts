$startDate = (Get-Date).AddDays(-30)  # Set the start date to 30 days ago
$endDate = Get-Date  # Set the end date to the current date

# Retrieve the system event logs between the specified dates
Get-EventLog -LogName System -After $startDate -Before $endDate


Explain :

This script retrieves the system event logs from the "System" log within a specified time range. 

It can be used to review the events that have occurred on a system, such as errors, warnings, or other important information logged by the operating system or applications.

In the context of a cyber attack, this script can be helpful during the incident response process.

It allows you to analyze the system events that occurred during a specific time period, which can aid in identifying 
indicators of compromise, understanding the attack vector, or detecting any suspicious activities that took place.

By reviewing the event logs, security professionals can gain insights into the attack, identify any potential vulnerabilities, and take appropriate actions to mitigate the impact of the cyber attack, investigate the incident further, and enhance the security of the system