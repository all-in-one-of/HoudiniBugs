param (
	[string]$Port = "7777",
	[string]$Map = "Concord",
	[switch]$PurgeLog
)

$DebugPreference = "Continue"
$ErrorActionPreference = "Stop"

if ($PurgeLog) {
    Write-Debug "Removing server logs"
	Remove-Item "$pwd\Saved\Logs\Server_*"
}

$ProjectSettings=.\DetectProjectSettings.ps1

$date = Get-Date
$time = $date.ToString("hh_mm_ss")
$log = "Server_$time.txt"
	

$ip = (
    Get-NetIPConfiguration |
    Where-Object {
        $_.IPv4DefaultGateway -ne $null -and
        $_.NetAdapter.Status -ne "Disconnected"
    }	
).IPv4Address.IPAddress

$external_ip = (Invoke-WebRequest -UseBasicParsing -Uri "http://ifconfig.me/ip").Content

$arguments = @($ProjectSettings.QuotedUProjectPath, $map, "-server", "-log", "LOG=$log", "-nosteam", "-verbose", "port=$port")

Write-Debug "Running: $($ProjectSettings.UE4EditorEXE) $arguments"
Start-Process -FilePath $ProjectSettings.UE4EditorEXE -ArgumentList  $arguments

Write-Host "Private IP ==> $ip"
Write-Host "Public IP  ==> $external_ip"
Write-Host "Log written to $log"

