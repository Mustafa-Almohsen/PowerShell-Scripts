$folderPath = "C:\Users\femus\Desktop\Tehtava_19\Tehtävä 1\Tiedostot"

# Get a list of all .txt files recursively within the specified folder
Get-ChildItem -Path $folderPath -Filter *.txt -Recurse | ForEach-Object {
    # Set the content of each .txt file to "123"
    Set-Content -Path $_.FullName -Value "123"
}


