$usrf = [Environment]::GetFolderPath("Desktop")

$f = Get-ChildItem $usrf -Recurse -File | Where-Object { $_.LastWriteTime -ge (Get-Date).AddDays(-3) }

$t = foreach ($file in $f) {
    [PSCustomObject]@{
        Name = $file.Name
        LastUsed = $file.LastAccessTime.ToString("dd/MM/yyyy HH:mm:ss")
        LastModified = $file.LastWriteTime.ToString("dd/MM/yyyy HH:mm:ss")
        Path = $file.FullName
        Folder = $file.DirectoryName
    }
}

$t | Sort-Object LastUsed -Descending | ConvertTo-Html | Out-File "$usrf\Latest.html"


EXPLAIN : 

This script retrieves the files on the user's desktop that have been modified within the last 3 days.
It creates a custom object $t that contains information about each file, including its name, last accessed time, last modified time, full path, and folder location. The $t objects are then sorted by last accessed time in descending order. Finally, the sorted data is converted to HTML format and saved as "Latest.html" on the user's desktop.

The script is useful for generating a report or overview of recently modified files on the desktop, 
which can be helpful for tracking recent activity or identifying recently used files.