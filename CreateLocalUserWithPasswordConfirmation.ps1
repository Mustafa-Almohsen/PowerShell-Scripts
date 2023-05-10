$name = Read-Host "Enter the new user login name"
$fullname = Read-Host "Enter the new user first and last name"
$description = Read-Host "Enter the new user description"

do {
    $password = Read-Host "Enter the new user password" -AsSecureString
    $confirmPassword = Read-Host "Confirm the new user password" -AsSecureString

    if ($password -ne $confirmPassword) {
        Write-Output 'Passwords do not match, please try again!'
    }
} while ($password -ne $confirmPassword) 

# Create a new local user with the provided details
New-LocalUser -Name $name -FullName $fullname -Description $description -Password $password

# Add the new user to the "Users" local group
Add-LocalGroupMember -Group "Users" -Member $name

Write-Host "User created!"
Write-Host "User login name: $name"
Write-Host "User full name: $fullname"
Write-Host "User description: $description"

Explain: 

Here:
 do {
    $password = Read-Host "Enter the new user password" -AsSecureString
    $confirmPassword = Read-Host "Confirm the new user password" -AsSecureString

    if ($password -ne $confirmPassword) {
        Write-Output 'Passwords do not match, please try again!'
    }
}

TO keep telling the user to enter matched Password if it matched then we are good to go 