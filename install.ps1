Write-Host "On the forge installer, select client, then install."
$WorkingDirectory = $PSScriptRoot + "\mods\"
$ModsDirectory = $env:APPDATA + "\.minecraft\mods"

$BC = $WorkingDirectory + "Builcraft-1.12.2.jar"
$IC2 = $WorkingDirectory + 'industrialcraft-2-2.8.220-ex112.jar'
Start-Process -FilePath java -ArgumentList '-jar', 'forge-1.12.2-14.23.5.2854-installer.jar'

if(!(Test-Path $ModsDirectory))
{
    New-Item -Path $ModsDirectory -ItemType "directory"
}

Copy-Item -path .\mods\* -Destination $ModsDirectory -Force
# Copy-Item -path $BC -Destination $ModsDirectory -Force
# Copy-Item -path $IC2 -Destination $ModsDirectory -Force
Write-Host "Copy from " $WorkingDirectory " to " $ModsDirectory