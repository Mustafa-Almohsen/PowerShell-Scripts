$uninstallKeys = Get-ItemProperty 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\*'

$uninstallKeys | Select-Object DisplayName, InstallLocation, InstallDate, Publisher, Language, DisplayVersion, DisplayIcon, QuietUninstallString, UninstallString, EstimatedSize | Out-File -FilePath "1.txt"


EXPLAIN: 

This script retrieves information about installed software on a Windows computer by accessing the registry key "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall*" 
about installed software,such as display name, installation location, publisher, version, and uninstall strings. 
It can be useful for generating reports, analyzing software inventory, or troubleshooting software-related issues on 
a Windows system.

MORE!
can be useful in various scenarios such as auditing software installed on a system, troubleshooting issues

related to specific software, and verifying software versions and their uninstall strings in preparation for 
software updates or removal. It can also help in detecting potentially unwanted programs or malicious software
 installed on a computer.