$plaintext = @"

 
HELLO HERE IS THE SENSITIVE DATA !!



"@

# Generate a random key and IV
$key = New-Object Byte[] 16
[Security.Cryptography.RNGCryptoServiceProvider]::Create().GetBytes($key)
$iv = New-Object Byte[] 16
[Security.Cryptography.RNGCryptoServiceProvider]::Create().GetBytes($iv)

# Convert plaintext to bytes
$plaintextBytes = [System.Text.Encoding]::UTF8.GetBytes($plaintext)

# Encrypt plaintext using AES encryption
$AesManaged = New-Object "System.Security.Cryptography.AesManaged"
$AesManaged.Mode = [System.Security.Cryptography.CipherMode]::CBC
$AesManaged.Padding = [System.Security.Cryptography.PaddingMode]::PKCS7
$encryptor = $AesManaged.CreateEncryptor($key, $iv)
$encryptedBytes = $encryptor.TransformFinalBlock($plaintextBytes, 0, $plaintextBytes.Length)

# Convert encrypted bytes to Base64-encoded string
$encryptedText = [Convert]::ToBase64String($encryptedBytes)

# Output encrypted text and key/IV (for decryption purposes)
Write-Host "Encrypted Text: " $encryptedText
Write-Host "Key: " ([Convert]::ToBase64String($key))
Write-Host "IV: " ([Convert]::ToBase64String($iv))



#EXPLAIN

#This script will output the encrypted text along with the randomly generated key and IV used for encryption. 
#You will need to save these values if you want to decrypt the code later.

#You can use the encrypted text, key, and IV to decrypt it later.

#Please make sure to keep the key and IV secure as they are needed to decrypt the script. 
#You may want to consider storing them in a secure location, such as a password manager.

#The encryption process used in your script is the Advanced Encryption Standard (AES) algorithm with a 256-bit key and a randomly generated initialization vector (IV).
#The AES algorithm is a block cipher that encrypts data in fixed-size blocks of 128 bits.

#The plaintext is first converted into a byte array and then encrypted using the AES algorithm with the provided key and IV. 
#The encrypted data is then encoded in base64 format to produce the encrypted text that you see in the output.


#it is important to ensure that the that the key and the IV are kept secret and not shared with anyone who should not have access to the encrypted data. Additionally,  use secure methods to transfer the key and the IV to the recipient, such as using a secure messaging platform or encrypting the key and the IV themselves before sending them to the recipient.
#for me i use secure messaging to securely transfer the encrypted text