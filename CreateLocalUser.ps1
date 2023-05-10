$name = Read-Host "Enter the new user login name"

$fullname = Read-Host "Enter the new user first and last name"

$description = Read-Host "Enter the new user description"

$password = Read-Host "Enter the new user password" -AsSecureString

# Create a new local user with the provided details
New-LocalUser -Name $name -FullName $fullname -Description $description -Password $password

# Add the new user to the "Users" local group
Add-LocalGroupMember -Group "Users" -Member $name

Write-Host "User created!"
Write-Host "User login name: $name"
Write-Host "User full name: $fullname"
Write-Host "User description: $description"


Note : Dont forget to use the # Parameter "-AsSecureString" To secure the String ! and if you would like to 
you can convert it from secureString to encrypted string by typin cmdlet "ConvertFrom-SecureString"
