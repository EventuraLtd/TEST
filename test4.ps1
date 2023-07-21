Write-Output $data
Write-Output "NAME>..."
Write-Output $FirstName

New-ADUser -Name $FirstName

Write-Output "FirstName - $FirstName"
Write-Output "LastName - $LastName"
Write-Output "TicketID - $TicketID"
