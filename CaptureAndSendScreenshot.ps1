Import-Module -Name Send-MailKitMessage
Add-Type -AssemblyName System.Windows.Forms, System.Drawing

# Capture screenshot of the entire desktop
$screens = [Windows.Forms.Screen]::AllScreens
$top = ($screens.Bounds.Top | Measure-Object -Minimum).Minimum
$left = ($screens.Bounds.Left | Measure-Object -Minimum).Minimum
$width = ($screens.Bounds.Right | Measure-Object -Maximum).Maximum
$height = ($screens.Bounds.Bottom | Measure-Object -Maximum).Maximum
$bounds = [Drawing.Rectangle]::FromLTRB($left, $top, $width, $height)
$bmp = New-Object System.Drawing.Bitmap ([int]$bounds.width), ([int]$bounds.height)
$graphics = [Drawing.Graphics]::FromImage($bmp)
$graphics.CopyFromScreen($bounds.Location, [Drawing.Point]::Empty, $bounds.size)

# Save the screenshot as an image file
$spath = "$env:USERPROFILE\test.jpg"
$bmp.Save($spath)

# Dispose of graphics objects
$graphics.Dispose()
$bmp.Dispose()

# Email configuration
$recipient = "RECIVER-EMAIL"
$sender = "SENDER-EMAIL"
$username = "SENDER-EMAIL"
$password = "SENDER-PASS"

$securePassword = ConvertTo-SecureString $password -AsPlainText -Force
$credentials = New-Object System.Management.Automation.PSCredential($username, $securePassword)

$subject = "Screenshot Email"
$body = "Screenshot of the desktop"
$smtpServer = "smtp.gmail.com"
$smtpPort = 587

# Send email with the screenshot attachment
Send-MailKitMessage -From $sender -Recipient $recipient -Subject $subject -TextBody $body -AttachmentList $spath -SmtpServer $smtpServer -Port $smtpPort -Credential $credentials



EXPALIN :

This script captures a screenshot of the entire desktop, saves it as an image file (test.jpg), 
and then sends an email with the screenshot attached using the Send-MailKitMessage module. Adjust 
the email configuration variables ($recipient, $sender, $username, $password, $smtpServer, $smtpPort) 
to match your desired email settings.
When running this script, it will capture the screenshot, save it as an image, and then 
send an email with the screenshot attachment to the specified recipient.

MORE !

The script allows you to capture a screenshot of your screen and send it as an email attachment.
It can be beneficial for various purposes, such as sharing visual information, reporting issues, 
or providing visual documentation. It provides
a convenient way to capture and share screenshots directly from within a PowerShell script.