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

### Expected result
Unreal Frontend profile launch succeeds.


### Notes
If you disable the Houdini Engine plugin, the same UnrealFrontend profile works.
