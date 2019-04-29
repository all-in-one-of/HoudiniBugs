# Travel Crash
Crash occurs in HoudiniEngine plugin when server travel.

## Steps to Reproduce
1. From PowerShell, run:

  .\ServerStart.ps1

2. From PowerShell, run:

  .\ClientStart.ps1

### Result
Crash occurs.

## Configuration Notes
BP_GameMode sets seamless server travel to true.


BP_GameMode executes the ServerTravel command 4 seconds after loading the map, so the map is continuously
reloaded.

## Other Notes
The crash only occurs when the Houdini Terrain is in the scene. If you delete the Houdini Terrain from the scene, save, and then repeat the *Steps to Reproduce*, the crash does not occur.
