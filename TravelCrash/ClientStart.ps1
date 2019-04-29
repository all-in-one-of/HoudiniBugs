param (
	[string]$Port = "7777",
	[string]$Server = "127.0.0.1",
	[string]$Map = "NewMap",
    [switch]$PurgeLog,

    [ValidateSet('fullscreen', '720', '1080', '1440')]
    [string] $Display = '720'
)

$DebugPreference = "Continue"
$ErrorActionPreference = "Stop"

$arguments = @()

if ($PurgeLog) {
    Write-Debug "Purging log files"
	Remove-Item "$pwd\Saved\Logs\Client_*"
}

$ProjectSettings=.\DetectProjectSettings.ps1

$date = Get-Date
$time = $date.ToString("hh_mm_ss")
$log = "Client_$time.txt"

# For UE4Editor.exe command line documentation, see:
# https://docs.unrealengine.com/en-us/Programming/Basics/CommandLineArguments
$arguments = @($ProjectSettings.QuotedUProjectPath, $server, "port=$port", "-game", "-log", "LOG=$log", "-nosteam", "-verbose")

switch($Display)
{
    "fullscreen" {
        $arguments += '-FULLSCCREEN';
        break;
    }
    "720" {
        $arguments += @('-WINDOWED -ResX=1280 -ResY=720');
        break;
    }
    "1080" {
        $arguments += @('-WINDOWED -ResX=1920 -ResY=1080');
        break;
    }
    default {
        Write-Error "Option $Display not handled"
    }
}

Write-Debug "Running: $($ProjectSettings.UE4EditorEXE) $arguments"
Start-Process -FilePath $ProjectSettings.UE4EditorEXE -ArgumentList  $arguments