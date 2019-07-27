# List all preinstalled applications
Get-AppxPackage | ft Name, PackageFullName -AutoSize

# Applications to be removed
Get-AppxPackage *xboxapp* | Remove-AppxPackage
Get-AppxPackage *BingWeather* | Remove-AppxPackage
Get-AppxPackage *GetStarted* | Remove-AppxPackage
Get-AppxPackage *MicrosoftOfficeHub* | Remove-AppxPackage
Get-AppxPackage *MicrosoftSolitaireCollection* | Remove-AppxPackage
Get-AppxPackage *MicrosoftStickyNotes* | Remove-AppxPackage
Get-AppxPackage *OneNote* | Remove-AppxPackage
Get-AppxPackage *OneConnect* | Remove-AppxPackage
Get-AppxPackage *People* | Remove-AppxPackage
Get-AppxPackage *Alarms* | Remove-AppxPackage
Get-AppxPackage *Maps* | Remove-AppxPackage
Get-AppxPackage *Phone* | Remove-AppxPackage
Get-AppxPackage *Minecraft* | Remove-AppxPackage
Get-AppxPackage *Messaging* | Remove-AppxPackage
Get-AppxPackage *WindowsFeedbackHub* | Remove-AppxPackage
Get-AppxPackage *XboxSpeechToTextOverlay* | Remove-AppxPackage
Get-AppxPackage *Xbox* | Remove-AppxPackage
Get-AppxPackage *Print3D* | Remove-AppxPackage

# List remaining applications
Get-AppxPackage | ft Name, PackageFullName -AutoSize
