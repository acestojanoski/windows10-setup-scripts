# List all preinstalled applications
Get-AppxPackage | ft Name, PackageFullName -AutoSize;

# Applications to be removed
$appList =
    "xboxapp",
    "BingWeather",
    "GetStarted",
    "MicrosoftOfficeHub",
    "MicrosoftSolitaireCollection",
    "MicrosoftStickyNotes",
    "OneNote",
    "OneConnect",
    "People",
    "Alarms",
    "Maps",
    "Phone",
    "Minecraft",
    "Messaging",
    "WindowsFeedbackHub",
    "XboxSpeechToTextOverlay",
    "Xbox",
    "Print3D";

# Remove applications
foreach ($app in $appList) {
    Get-AppxPackage *$app* | Remove-AppxPackage;
}

# List remaining applications
Get-AppxPackage | ft Name, PackageFullName -AutoSize;
