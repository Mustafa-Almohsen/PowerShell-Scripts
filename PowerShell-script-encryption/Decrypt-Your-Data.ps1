$encryptedText = "YOUR ENCRYPTED TEXT HERE"
$key = "ENCRYPTED KEY HERE"
$iv = "IV HERE"

# Convert the encrypted text from base64 format to a byte array
$encryptedBytes = [System.Convert]::FromBase64String($encryptedText)

# Create an Aes object with the same key and IV used during encryption
$aes = [System.Security.Cryptography.Aes]::Create()
$aes.Key = [System.Convert]::FromBase64String($key)
$aes.IV = [System.Convert]::FromBase64String($iv)

# Create a decryptor object
$decryptor = $aes.CreateDecryptor()

# Decrypt the encrypted data
$decryptedBytes = $decryptor.TransformFinalBlock($encryptedBytes, 0, $encryptedBytes.Length)

# Convert the decrypted byte array to plaintext
$plaintext = [System.Text.Encoding]::UTF8.GetString($decryptedBytes)

Write-Host "Here is the Plaintext: $plaintext"


#To decrypt the file, your friend would need to have the same encryption key and initialization vector that you used to encrypt the file. 
#You should share the key and initialization vector with your friend securely, for example, through a different channel like a secure messaging service or encrypted file transfer service.

#Once your friend has the key and initialization vector, they can use a decryption tool or script that uses the same algorithm you used to encrypt the file, such as AES-256, along with the key and initialization vector to decrypt the file.
 #In PowerShell, you can use the System.Security.Cryptography.Aes class to decrypt the file.