$taskFolder = "PATH-TO-FOLDER"

# Get a list of child items (files) within the task folder
Get-ChildItem $taskFolder |
ForEach-Object {
    # Get the file extension of the current file
    $extension = $_.Extension
    
    # Create the destination path by joining the task folder path with the file extension
    $destination = Join-Path $taskFolder $extension
    
    # Check if the destination directory does not exist
    if (!(Test-Path $destination)) {
        # Create a new directory with the destination path
        New-Item -ItemType Directory -Path $destination
    }
    
    # Move the current file to the destination directory
    Move-Item $_.FullName $destination
}




This script organizes files within a specified folder based on their file extensions. It performs the following actions:

    Retrieves a list of files within a specified folder.
    For each file, it extracts the file extension.
    Creates a new directory with the name of the file extension if it doesn't already exist.
    Moves the file into the corresponding directory based on its file extension.

The script helps to group files together by their file extensions, making it easier to locate and manage them within the folde