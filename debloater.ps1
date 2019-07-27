Write-Host "List of preinstalled applications"
Get-AppxPackage | ft Name, PackageFullName -AutoSize

# Applications to be removed
$appList = @(
    "Microsoft.XboxApp"
    "Microsoft.BingWeather"
    "Microsoft.GetStarted"
    "Microsoft.MicrosoftOfficeHub"
    "Microsoft.MicrosoftSolitaireCollection"
    "Microsoft.MicrosoftStickyNotes"
    "Microsoft.Office.OneNote"
    "Microsoft.OneConnect"
    "Microsoft.People"
    "Microsoft.WindowsAlarms"
    "Microsoft.WindowsMaps"
    "Phone"
    "Minecraft"
    "Microsoft.Messaging"
    "Microsoft.WindowsFeedbackHub"
    "Microsoft.Xbox"
    "Microsoft.Print3D"
)

Write-Host "Removing applications"

# Remove applications
foreach ($app in $appList) {
    Get-AppxPackage *$app* | Remove-AppxPackage
}

Write-Host "List of remaining applications"
Get-AppxPackage | ft Name, PackageFullName -AutoSize;
