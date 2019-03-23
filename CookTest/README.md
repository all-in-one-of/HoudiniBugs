# Cook Hang Test
Enabling the Houdini Engine plugin in an Unreal Project increases the cook time by two minutes, even
when no Houdini assets are in use.

## Steps to Reproduce
1. Open project.
2. Cook using File > Cook Content for Windows
3. Note how long it took. On my machine 10.78 seconds (used a stopwatch) and the Cook commandlet ran in 9.0539946s (according to log file).
4. Enable the Houdini plugin with Edit > Plugins. Restart when prompted.
5. Cook using File > Cook Content for Windows
6. Note how long it took.

## Results
When Houdini Plugin is enabled, the cook time increased to 133.55 seconds.

That is 122.55 seconds longer (2 minutes) than before (a 12x increase).

## Notes
Although the test scene has no Houdini assets, the problem also occurs if there are Houdini assets in the scene.

Also, this problem does not occur if the cook is run from the command line like so:

  C:\UnrealEngine\UE_4.21\Engine\Binaries\Win64\UE4Editor-Cmd.exe E:\code\HoudiniBugs\CookTest\CookTest.uproject -run=Cook  -TargetPlatform=WindowsNoEditor -fileopenlog -unversioned -stdout -CrashForUAT -UTF8Output

The problem only occurs when the cook is run from the editor.

## Configuration
- Windows 10 Pro 1809
- Unreal Engine 4.21.2
- Houdini 17.5.173
