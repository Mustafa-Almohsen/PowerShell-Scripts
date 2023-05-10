while($true){

    if(Get-Process 'Notepad' -ErrorAction Ignore){
    
    Write-Output 'Notepad runnig'
    }
    
    else{
    Write-Output 'Notepad NOT runnig'
    
    }
    }
    Start-Sleep -seconds 9000


    Explain :

In this example i used while($true) method to keep printing 'RUNNING' is its Running , And 'NOT RUNNING' if its not Running 

You can remove that if you would like to. Also "Start-Sleep -seconds 9000" you can put any number of seconds.