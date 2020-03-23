if ($Host.UI.RawUI.KeyAvailable) {
    $key = $Host.UI.RawUI.ReadKey()
}
if ($Key) {
 return
}
else {
    $Customers = "Contoso","NorthWind Traders","Company"
    for ($i = 0; $i -lt $Customers.Count; $i++)
    { 
          "{0} - {1}" -f $i,$Customers[$i]
    }
    ""
    $Value = Read-Host "Welcome! Which customer are you managing?"

    switch ($Value) {
        {$_ -eq 0} {<#Do stuff for this customer#>}
        {$_ -eq 1} {<#Do stuff for this customer#>}
        {$_ -eq 2} {<#Do stuff for this customer#>}
        default {write-output "Customer unknown..."}
    }
}