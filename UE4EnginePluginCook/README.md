Project fails to build with UnrealFrontend.exe when Houdini Plugin is enabled.

## Steps to Reproduce

1. Copy HOUDINI BUG REPORT_30C2E6D04790E27A1101E0985D2485FD.ulp2 to UE_4.21\Engine\Programs\UnrealFrontend\Profiles
2. Launch UE_4.21\Engine\Binaries\Win64\UnrealFrontend.exe
3. Under *Custom Launch Profiles*, launch the *Houdini Bug Report* profile.

### Result
Build fails with

    Running AutomationTool...
    Parsing command line: -ScriptsForProject=E:/code/HoudiniBugs/UE4EnginePluginCook/UE4EnginePluginCook.uproject BuildCookRun -project=E:/code/HoudiniBugs/UE4EnginePluginCook/UE4EnginePluginCook.uproject -noP4 -clientconfig=Development -serverconfig=Development -nocompile -nocompileeditor -installed -utf8output -platform=Win64 -targetplatform=Win64 -build -cook -map=NewMap -unversionedcookedcontent -compressed -stage -deploy -cmdline="NewMap -Messaging" -addcmdline="-SessionId=543C0C6045EB3A8FF63ABE82CCF4F774 -SessionOwner='doug' -SessionName='Houdini Bug Report' -verbose" -run
    Setting up ProjectParams for E:\code\HoudiniBugs\UE4EnginePluginCook\UE4EnginePluginCook.uproject
    ********** BUILD COMMAND STARTED **********
    Running: C:\UnrealEngine\UE_4.21\Engine\Binaries\DotNET\UnrealBuildTool.exe UE4EnginePluginCook Win64 Development -Project=E:\code\HoudiniBugs\UE4EnginePluginCook\UE4EnginePluginCook.uproject  E:\code\HoudiniBugs\UE4EnginePluginCook\UE4EnginePluginCook.uproject -NoUBTMakefiles  -remoteini="E:\code\HoudiniBugs\UE4EnginePluginCook" -skipdeploy -Manifest=E:\code\HoudiniBugs\UE4EnginePluginCook\Intermediate\Build\Manifest.xml -NoHotReload -log="C:\Users\doug\AppData\Roaming\Unreal Engine\AutomationTool\Logs\C+UnrealEngine+UE_4.21\UBT-UE4EnginePluginCook-Win64-Development.txt"
      Using 'git status' to determine working set for adaptive non-unity build (E:\code\HoudiniBugs).
      Using Visual Studio 2017 14.16.27023 toolchain (C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\VC\Tools\MSVC\14.16.27023) and Windows 10.0.16299.0 SDK (C:\Program Files (x86)\Windows Kits\10).
      Houdini Engine : Looking for Houdini Engine 17.5.173 in C:/Program Files/Side Effects Software/Houdini Engine 17.5.173
      Houdini Engine : Looking for Houdini 17.5.173 in C:/Program Files/Side Effects Software/Houdini 17.5.173
      Houdini Engine: Found Houdini in C:/Program Files/Side Effects Software/Houdini 17.5.173
      ERROR: System.NullReferenceException: Object reference not set to an instance of an object.
                at UnrealBuildTool.UEBuildBinary.<>c.<SetupBinaryLinkEnvironment>b__37_1(FileItem Item) in D:\Build\++UE4\Sync\Engine\Saved\CsTools\Engine\Source\Programs\UnrealBuildTool\Configuration\UEBuildBinary.cs:line 752
                at System.Linq.Enumerable.WhereSelectListIterator`2.MoveNext()
                at System.Linq.Enumerable.Any[TSource](IEnumerable`1 source, Func`2 predicate)
                at UnrealBuildTool.UEBuildBinary.SetupBinaryLinkEnvironment(ReadOnlyTargetRules Target, UEToolChain ToolChain, LinkEnvironment LinkEnvironment, CppCompileEnvironment CompileEnvironment, List`1 SharedPCHs, ISourceFileWorkingSet WorkingSet, DirectoryReference ExeDir, ActionGraph ActionGraph) in D:\Build\++UE4\Sync\Engine\Saved\CsTools\Engine\Source\Programs\UnrealBuildTool\Configuration\UEBuildBinary.cs:line 752
                at UnrealBuildTool.UEBuildBinary.Build(ReadOnlyTargetRules Target, UEToolChain ToolChain, CppCompileEnvironment CompileEnvironment, LinkEnvironment LinkEnvironment, List`1 SharedPCHs, ISourceFileWorkingSet WorkingSet, DirectoryReference ExeDir, ActionGraph ActionGraph) in D:\Build\++UE4\Sync\Engine\Saved\CsTools\Engine\Source\Programs\UnrealBuildTool\Configuration\UEBuildBinary.cs:line 193
                at UnrealBuildTool.UEBuildTarget.Build(BuildConfiguration BuildConfiguration, CPPHeaders Headers, List`1 OutputItems, List`1 UObjectModules, ISourceFileWorkingSet WorkingSet, ActionGraph ActionGraph, EHotReload HotReload, Boolean bIsAssemblingBuild) in D:\Build\++UE4\Sync\Engine\Saved\CsTools\Engine\Source\Programs\UnrealBuildTool\Configuration\UEBuildTarget.cs:line 2173
                at UnrealBuildTool.UnrealBuildTool.RunUBT(BuildConfiguration BuildConfiguration, String[] Arguments, FileReference ProjectFile, Boolean bCatchExceptions) in D:\Build\++UE4\Sync\Engine\Saved\CsTools\Engine\Source\Programs\UnrealBuildTool\UnrealBuildTool.cs:line 1503
             (see C:\Users\doug\AppData\Roaming\Unreal Engine\AutomationTool\Logs\C+UnrealEngine+UE_4.21\UBT-UE4EnginePluginCook-Win64-Development.txt for full exception trace)
    Took 2.7705922s to run UnrealBuildTool.exe, ExitCode=5
    ERROR: UnrealBuildTool failed. See log for more details. (C:\Users\doug\AppData\Roaming\Unreal Engine\AutomationTool\Logs\C+UnrealEngine+UE_4.21\UBT-UE4EnginePluginCook-Win64-Development.txt)
           (see C:\Users\doug\AppData\Roaming\Unreal Engine\AutomationTool\Logs\C+UnrealEngine+UE_4.21\Log.txt for full exception trace)
    AutomationTool exiting with ExitCode=5 (5)
    BUILD FAILED


Contents of Log.txt referenced in the above errors:

    UnrealBuildTool.GuardedMain: Command line: "C:\UnrealEngine\UE_4.21\Engine\Binaries\DotNET\UnrealBuildTool.exe" UE4EnginePluginCook Win64 Development -Project=E:\code\HoudiniBugs\UE4EnginePluginCook\UE4EnginePluginCook.uproject  E:\code\HoudiniBugs\UE4EnginePluginCook\UE4EnginePluginCook.uproject -NoUBTMakefiles  -remoteini="E:\code\HoudiniBugs\UE4EnginePluginCook" -skipdeploy -Manifest=E:\code\HoudiniBugs\UE4EnginePluginCook\Intermediate\Build\Manifest.xml -NoHotReload -log="C:\Users\doug\AppData\Roaming\Unreal Engine\AutomationTool\Logs\C+UnrealEngine+UE_4.21\UBT-UE4EnginePluginCook-Win64-Development.txt"
    GitSourceFileWorkingSet..ctor: Using 'git status' to determine working set for adaptive non-unity build (E:\code\HoudiniBugs).
    WindowsPlatform.UpdateCachedWindowsSdks: Found Windows 8.1 SDK at C:\Program Files (x86)\Windows Kits\8.1
    WindowsPlatform.EnumerateSdkRootDirs: Found Windows 10 SDK root at C:\Program Files (x86)\Windows Kits\10 (1)
    WindowsPlatform.EnumerateSdkRootDirs: Found Windows 10 SDK root at C:\Program Files (x86)\Windows Kits\10 (2)
    WindowsPlatform.UpdateCachedWindowsSdks: Found Universal CRT version 10.0.10150.0 at C:\Program Files (x86)\Windows Kits\10
    WindowsPlatform.UpdateCachedWindowsSdks: Found Universal CRT version 10.0.10240.0 at C:\Program Files (x86)\Windows Kits\10
    WindowsPlatform.UpdateCachedWindowsSdks: Found Windows 10 SDK version 10.0.15063.0 at C:\Program Files (x86)\Windows Kits\10
    WindowsPlatform.UpdateCachedWindowsSdks: Found Universal CRT version 10.0.15063.0 at C:\Program Files (x86)\Windows Kits\10
    WindowsPlatform.UpdateCachedWindowsSdks: Found Windows 10 SDK version 10.0.16299.0 at C:\Program Files (x86)\Windows Kits\10
    WindowsPlatform.UpdateCachedWindowsSdks: Found Universal CRT version 10.0.16299.0 at C:\Program Files (x86)\Windows Kits\10
    WindowsPlatform.UpdateCachedWindowsSdks: Found Windows 10 SDK version 10.0.17134.0 at C:\Program Files (x86)\Windows Kits\10
    WindowsPlatform.UpdateCachedWindowsSdks: Found Universal CRT version 10.0.17134.0 at C:\Program Files (x86)\Windows Kits\10
    WindowsPlatform.UpdateCachedWindowsSdks: Found Windows 10 SDK version 10.0.17763.0 at C:\Program Files (x86)\Windows Kits\10
    WindowsPlatform.UpdateCachedWindowsSdks: Found Universal CRT version 10.0.17763.0 at C:\Program Files (x86)\Windows Kits\10
    VCToolChain.PrintVersionInfo: Using Visual Studio 2017 14.16.27023 toolchain (C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\VC\Tools\MSVC\14.16.27023) and Windows 10.0.16299.0 SDK (C:\Program Files (x86)\Windows Kits\10).
    VCToolChain.PrintVersionInfo: Compiler: C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\VC\Tools\MSVC\14.16.27023\bin\HostX64\x64\cl.exe
    VCToolChain.PrintVersionInfo: Linker: C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\VC\Tools\MSVC\14.16.27023\bin\HostX64\x64\link.exe
    VCToolChain.PrintVersionInfo: Library Manager: C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\VC\Tools\MSVC\14.16.27023\bin\HostX64\x64\lib.exe
    VCToolChain.PrintVersionInfo: Resource Compiler: C:\Program Files (x86)\Windows Kits\10\bin\10.0.16299.0\x64\rc.exe
    UEBuildTarget.AddPlugin: Enabling plugin 'HoudiniEngine' (referenced via UE4EnginePluginCook.uproject)
    UEBuildTarget.AddPlugin: Enabling plugin 'Paper2D' (referenced via default plugins)
    UEBuildTarget.AddPlugin: Enabling plugin 'AISupport' (referenced via default plugins)
    UEBuildTarget.AddPlugin: Enabling plugin 'LightPropagationVolume' (referenced via default plugins)
    UEBuildTarget.AddPlugin: Enabling plugin 'ActorLayerUtilities' (referenced via default plugins)
    UEBuildTarget.AddPlugin: Enabling plugin 'CLionSourceCodeAccess' (referenced via default plugins)
    UEBuildTarget.AddPlugin: Enabling plugin 'CodeLiteSourceCodeAccess' (referenced via default plugins)
    UEBuildTarget.AddPlugin: Enabling plugin 'GitSourceControl' (referenced via default plugins)
    UEBuildTarget.AddPlugin: Enabling plugin 'KDevelopSourceCodeAccess' (referenced via default plugins)
    UEBuildTarget.AddPlugin: Enabling plugin 'NullSourceCodeAccess' (referenced via default plugins)
    UEBuildTarget.AddPlugin: Enabling plugin 'PerforceSourceControl' (referenced via default plugins)
    UEBuildTarget.AddPlugin: Enabling plugin 'SubversionSourceControl' (referenced via default plugins)
    UEBuildTarget.AddPlugin: Enabling plugin 'UObjectPlugin' (referenced via default plugins)
    UEBuildTarget.AddPlugin: Enabling plugin 'VisualStudioCodeSourceCodeAccess' (referenced via default plugins)
    UEBuildTarget.AddPlugin: Enabling plugin 'VisualStudioSourceCodeAccess' (referenced via default plugins)
    UEBuildTarget.AddPlugin: Enabling plugin 'XCodeSourceCodeAccess' (referenced via default plugins)
    UEBuildTarget.AddPlugin: Enabling plugin 'AssetManagerEditor' (referenced via default plugins)
    UEBuildTarget.AddPlugin: Enabling plugin 'CryptoKeys' (referenced via default plugins)
    UEBuildTarget.AddPlugin: Enabling plugin 'DataValidation' (referenced via default plugins)
    UEBuildTarget.AddPlugin: Enabling plugin 'FacialAnimation' (referenced via default plugins)
    UEBuildTarget.AddPlugin: Enabling plugin 'GameplayTagsEditor' (referenced via default plugins)
    UEBuildTarget.AddPlugin: Enabling plugin 'MacGraphicsSwitching' (referenced via default plugins)
    UEBuildTarget.AddPlugin: Enabling plugin 'MeshEditor' (referenced via default plugins)
    UEBuildTarget.AddPlugin: Enabling plugin 'EditableMesh' (referenced via default plugins -> MeshEditor.uplugin)
    UEBuildTarget.AddPlugin: Enabling plugin 'MobileLauncherProfileWizard' (referenced via default plugins)
    UEBuildTarget.AddPlugin: Enabling plugin 'PluginBrowser' (referenced via default plugins)
    UEBuildTarget.AddPlugin: Enabling plugin 'SpeedTreeImporter' (referenced via default plugins)
    UEBuildTarget.AddPlugin: Enabling plugin 'DatasmithContent' (referenced via default plugins)
    UEBuildTarget.AddPlugin: Enabling plugin 'VariantManagerContent' (referenced via default plugins)
    UEBuildTarget.AddPlugin: Enabling plugin 'AlembicImporter' (referenced via default plugins)
    UEBuildTarget.AddPlugin: Enabling plugin 'GeometryCache' (referenced via default plugins -> AlembicImporter.uplugin)
    UEBuildTarget.AddPlugin: Enabling plugin 'AppleImageUtils' (referenced via default plugins)
    UEBuildTarget.AddPlugin: Enabling plugin 'AppleVision' (referenced via default plugins)
    UEBuildTarget.AddPlugin: Enabling plugin 'BackChannel' (referenced via default plugins)
    UEBuildTarget.AddPlugin: Enabling plugin 'CharacterAI' (referenced via default plugins)
    UEBuildTarget.AddPlugin: Enabling plugin 'HTML5Networking' (referenced via default plugins)
    UEBuildTarget.AddPlugin: Enabling plugin 'ProxyLODPlugin' (referenced via default plugins)
    UEBuildTarget.AddPlugin: Ignoring plugin 'MagicLeap' (referenced via default plugins) due to target platform not supported by descriptor.
    UEBuildTarget.AddPlugin: Ignoring plugin 'MagicLeapMedia' (referenced via default plugins) due to target platform not supported by descriptor.
    UEBuildTarget.AddPlugin: Enabling plugin 'AndroidMedia' (referenced via default plugins)
    UEBuildTarget.AddPlugin: Enabling plugin 'AvfMedia' (referenced via default plugins)
    UEBuildTarget.AddPlugin: Enabling plugin 'ImgMedia' (referenced via default plugins)
    UEBuildTarget.AddPlugin: Enabling plugin 'LinearTimecode' (referenced via default plugins)
    UEBuildTarget.AddPlugin: Enabling plugin 'MediaCompositing' (referenced via default plugins)
    UEBuildTarget.AddPlugin: Enabling plugin 'MediaPlayerEditor' (referenced via default plugins)
    UEBuildTarget.AddPlugin: Enabling plugin 'WmfMedia' (referenced via default plugins)
    UEBuildTarget.AddPlugin: Enabling plugin 'TcpMessaging' (referenced via default plugins)
    UEBuildTarget.AddPlugin: Enabling plugin 'UdpMessaging' (referenced via default plugins)
    UEBuildTarget.AddPlugin: Enabling plugin 'ActorSequence' (referenced via default plugins)
    UEBuildTarget.AddPlugin: Enabling plugin 'LevelSequenceEditor' (referenced via default plugins)
    UEBuildTarget.AddPlugin: Enabling plugin 'MatineeToLevelSequence' (referenced via default plugins)
    UEBuildTarget.AddPlugin: Enabling plugin 'NetcodeUnitTest' (referenced via default plugins)
    UEBuildTarget.AddPlugin: Enabling plugin 'NUTUnrealEngine4' (referenced via default plugins)
    UEBuildTarget.AddPlugin: Ignoring plugin 'OnlineSubsystemGooglePlay' (referenced via default plugins) due to target platform not supported by descriptor.
    UEBuildTarget.AddPlugin: Ignoring plugin 'OnlineSubsystemIOS' (referenced via default plugins) due to target platform not supported by descriptor.
    UEBuildTarget.AddPlugin: Enabling plugin 'OnlineSubsystem' (referenced via default plugins)
    UEBuildTarget.AddPlugin: Enabling plugin 'OnlineSubsystemNull' (referenced via default plugins)
    UEBuildTarget.AddPlugin: Enabling plugin 'OnlineSubsystemUtils' (referenced via default plugins -> OnlineSubsystemNull.uplugin)
    UEBuildTarget.AddPlugin: Enabling plugin 'LauncherChunkInstaller' (referenced via default plugins)
    UEBuildTarget.AddPlugin: Enabling plugin 'AndroidDeviceProfileSelector' (referenced via default plugins)
    UEBuildTarget.AddPlugin: Enabling plugin 'AndroidMoviePlayer' (referenced via default plugins)
    UEBuildTarget.AddPlugin: Enabling plugin 'AndroidPermission' (referenced via default plugins)
    UEBuildTarget.AddPlugin: Enabling plugin 'AppleMoviePlayer' (referenced via default plugins)
    UEBuildTarget.AddPlugin: Enabling plugin 'ArchVisCharacter' (referenced via default plugins)
    UEBuildTarget.AddPlugin: Enabling plugin 'AudioCapture' (referenced via default plugins)
    UEBuildTarget.AddPlugin: Enabling plugin 'CableComponent' (referenced via default plugins)
    UEBuildTarget.AddPlugin: Enabling plugin 'CustomMeshComponent' (referenced via default plugins)
    UEBuildTarget.AddPlugin: Enabling plugin 'ExampleDeviceProfileSelector' (referenced via default plugins)
    UEBuildTarget.AddPlugin: Ignoring plugin 'Firebase' (referenced via default plugins) due to target platform not supported by descriptor.
    UEBuildTarget.AddPlugin: Enabling plugin 'GoogleCloudMessaging' (referenced via default plugins)
    UEBuildTarget.AddPlugin: Enabling plugin 'IOSDeviceProfileSelector' (referenced via default plugins)
    UEBuildTarget.AddPlugin: Enabling plugin 'LinuxDeviceProfileSelector' (referenced via default plugins)
    UEBuildTarget.AddPlugin: Enabling plugin 'LocationServicesBPLibrary' (referenced via default plugins)
    UEBuildTarget.AddPlugin: Enabling plugin 'MobilePatchingUtils' (referenced via default plugins)
    UEBuildTarget.AddPlugin: Enabling plugin 'OculusVR' (referenced via default plugins)
    UEBuildTarget.AddPlugin: Enabling plugin 'ProceduralMeshComponent' (referenced via default plugins -> OculusVR.uplugin)
    UEBuildTarget.AddPlugin: Enabling plugin 'PhysXVehicles' (referenced via default plugins)
    UEBuildTarget.AddPlugin: Enabling plugin 'RuntimePhysXCooking' (referenced via default plugins)
    UEBuildTarget.AddPlugin: Enabling plugin 'SteamVR' (referenced via default plugins)
    UEBuildTarget.AddPlugin: Enabling plugin 'WebMMoviePlayer' (referenced via default plugins)
    UEBuildTarget.AddPlugin: Enabling plugin 'WebMMedia' (referenced via default plugins -> WebMMoviePlayer.uplugin)
    UEBuildTarget.AddPlugin: Enabling plugin 'WindowsMoviePlayer' (referenced via default plugins)
    Log.WriteException: ==============================================================================
    Log.WriteException: ERROR: System.NullReferenceException: Object reference not set to an instance of an object.
    Log.WriteException:           at UnrealBuildTool.UEBuildBinary.<>c.<SetupBinaryLinkEnvironment>b__37_1(FileItem Item) in D:\Build\++UE4\Sync\Engine\Saved\CsTools\Engine\Source\Programs\UnrealBuildTool\Configuration\UEBuildBinary.cs:line 752
    Log.WriteException:           at System.Linq.Enumerable.WhereSelectListIterator`2.MoveNext()
    Log.WriteException:           at System.Linq.Enumerable.Any[TSource](IEnumerable`1 source, Func`2 predicate)
    Log.WriteException:           at UnrealBuildTool.UEBuildBinary.SetupBinaryLinkEnvironment(ReadOnlyTargetRules Target, UEToolChain ToolChain, LinkEnvironment LinkEnvironment, CppCompileEnvironment CompileEnvironment, List`1 SharedPCHs, ISourceFileWorkingSet WorkingSet, DirectoryReference ExeDir, ActionGraph ActionGraph) in D:\Build\++UE4\Sync\Engine\Saved\CsTools\Engine\Source\Programs\UnrealBuildTool\Configuration\UEBuildBinary.cs:line 752
    Log.WriteException:           at UnrealBuildTool.UEBuildBinary.Build(ReadOnlyTargetRules Target, UEToolChain ToolChain, CppCompileEnvironment CompileEnvironment, LinkEnvironment LinkEnvironment, List`1 SharedPCHs, ISourceFileWorkingSet WorkingSet, DirectoryReference ExeDir, ActionGraph ActionGraph) in D:\Build\++UE4\Sync\Engine\Saved\CsTools\Engine\Source\Programs\UnrealBuildTool\Configuration\UEBuildBinary.cs:line 193
    Log.WriteException:           at UnrealBuildTool.UEBuildTarget.Build(BuildConfiguration BuildConfiguration, CPPHeaders Headers, List`1 OutputItems, List`1 UObjectModules, ISourceFileWorkingSet WorkingSet, ActionGraph ActionGraph, EHotReload HotReload, Boolean bIsAssemblingBuild) in D:\Build\++UE4\Sync\Engine\Saved\CsTools\Engine\Source\Programs\UnrealBuildTool\Configuration\UEBuildTarget.cs:line 2173
    Log.WriteException:           at UnrealBuildTool.UnrealBuildTool.RunUBT(BuildConfiguration BuildConfiguration, String[] Arguments, FileReference ProjectFile, Boolean bCatchExceptions) in D:\Build\++UE4\Sync\Engine\Saved\CsTools\Engine\Source\Programs\UnrealBuildTool\UnrealBuildTool.cs:line 1503
    Log.WriteException:        (see C:\Users\doug\AppData\Roaming\Unreal Engine\AutomationTool\Logs\C+UnrealEngine+UE_4.21\UBT-UE4EnginePluginCook-Win64-Development.txt for full exception trace)
    Log.WriteException: 
    Log.WriteException: NullReferenceException: Object reference not set to an instance of an object.
    Log.WriteException:    at UnrealBuildTool.UEBuildBinary.<>c.<SetupBinaryLinkEnvironment>b__37_1(FileItem Item) in D:\Build\++UE4\Sync\Engine\Saved\CsTools\Engine\Source\Programs\UnrealBuildTool\Configuration\UEBuildBinary.cs:line 752
    Log.WriteException:    at System.Linq.Enumerable.WhereSelectListIterator`2.MoveNext()
    Log.WriteException:    at System.Linq.Enumerable.Any[TSource](IEnumerable`1 source, Func`2 predicate)
    Log.WriteException:    at UnrealBuildTool.UEBuildBinary.SetupBinaryLinkEnvironment(ReadOnlyTargetRules Target, UEToolChain ToolChain, LinkEnvironment LinkEnvironment, CppCompileEnvironment CompileEnvironment, List`1 SharedPCHs, ISourceFileWorkingSet WorkingSet, DirectoryReference ExeDir, ActionGraph ActionGraph) in D:\Build\++UE4\Sync\Engine\Saved\CsTools\Engine\Source\Programs\UnrealBuildTool\Configuration\UEBuildBinary.cs:line 752
    Log.WriteException:    at UnrealBuildTool.UEBuildBinary.Build(ReadOnlyTargetRules Target, UEToolChain ToolChain, CppCompileEnvironment CompileEnvironment, LinkEnvironment LinkEnvironment, List`1 SharedPCHs, ISourceFileWorkingSet WorkingSet, DirectoryReference ExeDir, ActionGraph ActionGraph) in D:\Build\++UE4\Sync\Engine\Saved\CsTools\Engine\Source\Programs\UnrealBuildTool\Configuration\UEBuildBinary.cs:line 193
    Log.WriteException:    at UnrealBuildTool.UEBuildTarget.Build(BuildConfiguration BuildConfiguration, CPPHeaders Headers, List`1 OutputItems, List`1 UObjectModules, ISourceFileWorkingSet WorkingSet, ActionGraph ActionGraph, EHotReload HotReload, Boolean bIsAssemblingBuild) in D:\Build\++UE4\Sync\Engine\Saved\CsTools\Engine\Source\Programs\UnrealBuildTool\Configuration\UEBuildTarget.cs:line 2173
    Log.WriteException:    at UnrealBuildTool.UnrealBuildTool.RunUBT(BuildConfiguration BuildConfiguration, String[] Arguments, FileReference ProjectFile, Boolean bCatchExceptions) in D:\Build\++UE4\Sync\Engine\Saved\CsTools\Engine\Source\Programs\UnrealBuildTool\UnrealBuildTool.cs:line 1503
    Log.WriteException: ==============================================================================


### Expected result
Unreal Frontend profile launch succeeds.


### Notes
If you disable the Houdini Engine plugin, the same UnrealFrontend profile works.
