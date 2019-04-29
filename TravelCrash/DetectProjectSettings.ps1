param (
	[string]$AdditionalSearchDir = ""
)

$ErrorActionPreference = "Stop"

$PossibleUE4BaseInstallDirs = @(
    "C:\Program Files\Epic Games\",
    "C:\UnrealEngine\"
)

if ($AdditionalSearchDir -ne "") {
    Write-Debug "Adding additional search directory $AdditionalSearchDir"
    $PossibleUE4BaseInstallDirs = @($AdditionalSearchDir) + $PossibleUE4BaseInstallDirs
}

$results = gci -Filter *.uproject
if ($results.Count -ne 1) {
    Write-Error "Didn't find a single Unreal uproject in $pwd. Found {$results.Count}."
}

$project = $results[0]
$uproject=cat $project | ConvertFrom-Json
Write-Debug "uproject: $uproject"


$PossibleUE4InstallDirs = $PossibleUE4BaseInstallDirs | Join-Path -ChildPath "UE_$($uproject.EngineAssociation)"
Write-Debug "Searching for UE4 in $($PossibleUE4InstallDirs -join ", ")"
[array]$Discovered=$PossibleUE4InstallDirs | Where-Object -FilterScript { Test-Path $_ -Type Container }
Write-Debug "Found UE4 in $($Discovered -join ", ")"

if ($Discovered -eq 0) {
    Write-Error "Could not find an unreal installation in $($PossibleUE4InstallDirs -join ", ")"
}

[hashtable]$Return = @{}
$Return.UProjectDict = $uproject
$Return.UE4EditorEXE = Join-Path -Path $Discovered[0] -ChildPath "Engine\Binaries\Win64\UE4Editor.exe"
$Return.UProject = $project

# Quoted UProject Path required because Start-Process, even when using the arguments array, doesn't work right without it.
$Return.QuotedUProjectPath = '"' + $project.FullName + '"'

Write-Output $Return
