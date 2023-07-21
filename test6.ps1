param ([Parameter (Mandatory = $false)]
	[object]$WebHookData
)


$data = ConvertFrom-Json -InputObject $WebHookData.RequestBody


Write-Output $data
Write-Output "NAME>..."


$FirstName = $data[0].Content.firstname
$LastName = $data[0].Content.lastname
$TicketID = $data[0].Content.TicketID

Write-Output $FirstName

New-ADUser -Name $FirstName

Write-Output "FirstName - $FirstName"
Write-Output "LastName - $LastName"
Write-Output "TicketID - $TicketID"
