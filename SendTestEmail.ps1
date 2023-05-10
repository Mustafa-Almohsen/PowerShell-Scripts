Import-Module -Name Send-MailKitMessage

$recipientEmail = "RECIPIENT-EMAIL"
$senderEmail = "SENDER-EMAIL"
$senderUsername = "SENDER-USERNAME"
$senderPassword = "SENDER-PASSWORD"

$securePassword = ConvertTo-SecureString $senderPassword -AsPlainText -Force
$credentials = New-Object System.Management.Automation.PSCredential($senderUsername, $securePassword)

$subject = "Test-Email"
$body = "YOUR-MESSAGE-HERE!"
$smtpServer = "smtp.gmail.com"
$smtpPort = 587 

Send-MailkitMessage -From $senderEmail -To $recipientEmail -Subject $subject -TextBody $body -SmtpServer $smtpServer -SmtpPort $smtpPort -Credential $credentials


EXPLAIN:

In this script, the Send-MailKitMessage module is imported to enable sending emails. 
The variables $recipientEmail, $senderEmail, $senderUsername, and $senderPassword store the email addresses and login credentials for the sender.
The $securePassword variable is used to convert the sender's password to a secure string. The $credentials variable
is then created with the sender's username and secure password.

The $subject variable stores the email subject, and the $body variable stores the email message content. 
The SMTP server and port for the email service are specified with the $smtpServer and $smtpPort variables.

Finally, the Send-MailkitMessage cmdlet is used to send the email, providing the necessary parameters such as 
the sender, recipient, subject, body, SMTP server, port, and credentials.

MORE!

the benefit of this script is that it allows you to send test emails programmatically using PowerShell. 
This can be useful for various purposes, such as:

Testing email functionality: You can quickly verify if your email setup is working correctly by sending 
test emails to yourself or other recipients.

Automated notifications: You can integrate this script into your automation workflows to send email notifications
 about the status of certain processes or events.

Troubleshooting and monitoring: In case of a cyber attack or suspicious activity, you can use this script to send 
alerts or notifications to relevant parties for immediate action.

Scripted communication: If you need to send standardized or automated emails as part of a larger script or task, 
this script provides a convenient way to accomplish that.

Overall, this script gives you more control and flexibility in sending emails programmatically, making it a valuable tool 
for various scenarios in IT operations, system monitoring, and communication.