# Retrieve the IP address information for network interfaces
$ipAddresses = Get-NetIpAddress | Select-Object -Property IpAddress, InterfaceAlias, AddressFamily

# Convert the IP address information to HTML format
$html = $ipAddresses | ConvertTo-Html

# Save the HTML content to a file
Set-Content -Path "ip.html" -Value $html
