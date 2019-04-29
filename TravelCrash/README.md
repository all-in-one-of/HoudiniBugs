# Travel Crash
Crash occurs in HoudiniEngine plugin when server travel.

## Steps to Reproduce
1. From PowerShell, run:

  .\ServerStart.ps1

### Result
The following crash occurs:

```
[2019.04.29-17.39.45:458][119]LogWorld: SeamlessTravel to: /Game/NewMap
[2019.04.29-17.39.48:192][120]LogWindows: Error: === Critical error: ===
[2019.04.29-17.39.48:193][120]LogWindows: Error: 
[2019.04.29-17.39.48:197][120]LogWindows: Error: Fatal error!
[2019.04.29-17.39.48:199][120]LogWindows: Error: 
[2019.04.29-17.39.48:199][120]LogWindows: Error: Unhandled Exception: EXCEPTION_ACCESS_VIOLATION reading address 0x000017e0
[2019.04.29-17.39.48:200][120]LogWindows: Error: 
[2019.04.29-17.39.48:201][120]LogWindows: Error: [Callstack] 0x00007fff377bc638 UE4Editor-Engine.dll!TSet<TTuple<TSubclassOf<USubsystem>,USubsystem *>,TDefaultMapHashableKeyFuncs<TSubclassOf<USubsystem>,USubsystem *,0>,FDefaultSetAllocator>::FindId() [d:\build\++ue4\sync\engine\source\runtime\core\public\containers\set.h:643]
[2019.04.29-17.39.48:202][120]LogWindows: Error: [Callstack] 0x00007fff377c3f7d UE4Editor-Engine.dll!FSubsystemCollectionBase::GetSubsystemInternal() [d:\build\++ue4\sync\engine\source\runtime\engine\private\subsystems\subsystemcollection.cpp:52]
[2019.04.29-17.39.48:204][120]LogWindows: Error: [Callstack] 0x00007fff0a38aa13 UE4Editor-HoudiniEngineRuntime.dll!UEditorEngine::GetEditorSubsystem<UImportSubsystem>() [C:\UnrealEngine\UE_4.22\Engine\Source\Editor\UnrealEd\Classes\Editor\EditorEngine.h:3115]
[2019.04.29-17.39.48:205][120]LogWindows: Error: [Callstack] 0x00007fff0a3eb5e8 UE4Editor-HoudiniEngineRuntime.dll!UHoudiniAssetComponent::UnsubscribeEditorDelegates() [E:\code\HoudiniBugs\TravelCrash\Plugins\HoudiniEngine\Source\HoudiniEngineRuntime\Private\HoudiniAssetComponent.cpp:2278]
[2019.04.29-17.39.48:206][120]LogWindows: Error: [Callstack] 0x00007fff0a3cc3b0 UE4Editor-HoudiniEngineRuntime.dll!UHoudiniAssetComponent::OnComponentDestroyed() [E:\code\HoudiniBugs\TravelCrash\Plugins\HoudiniEngine\Source\HoudiniEngineRuntime\Private\HoudiniAssetComponent.cpp:3134]
[2019.04.29-17.39.48:206][120]LogWindows: Error: [Callstack] 0x00007fff36be30f0 UE4Editor-Engine.dll!UActorComponent::BeginDestroy() [d:\build\++ue4\sync\engine\source\runtime\engine\private\components\actorcomponent.cpp:474]
[2019.04.29-17.39.48:207][120]LogWindows: Error: [Callstack] 0x00007fff36c4dd4c UE4Editor-Engine.dll!UPrimitiveComponent::BeginDestroy() [d:\build\++ue4\sync\engine\source\runtime\engine\private\components\primitivecomponent.cpp:1202]
[2019.04.29-17.39.48:208][120]LogWindows: Error: [Callstack] 0x00007fff55f80dcb UE4Editor-CoreUObject.dll!UObject::ConditionalBeginDestroy() [d:\build\++ue4\sync\engine\source\runtime\coreuobject\private\uobject\obj.cpp:975]
[2019.04.29-17.39.48:209][120]LogWindows: Error: [Callstack] 0x00007fff55f5e3ec UE4Editor-CoreUObject.dll!UnhashUnreachableObjects() [d:\build\++ue4\sync\engine\source\runtime\coreuobject\private\uobject\garbagecollection.cpp:1636]
[2019.04.29-17.39.48:209][120]LogWindows: Error: [Callstack] 0x00007fff55f0cded UE4Editor-CoreUObject.dll!CollectGarbageInternal() [d:\build\++ue4\sync\engine\source\runtime\coreuobject\private\uobject\garbagecollection.cpp:1576]
[2019.04.29-17.39.48:212][120]LogWindows: Error: [Callstack] 0x00007fff55f0c3ca UE4Editor-CoreUObject.dll!CollectGarbage() [d:\build\++ue4\sync\engine\source\runtime\coreuobject\private\uobject\garbagecollection.cpp:1666]
[2019.04.29-17.39.48:217][120]LogWindows: Error: [Callstack] 0x00007fff3797a179 UE4Editor-Engine.dll!FSeamlessTravelHandler::Tick() [d:\build\++ue4\sync\engine\source\runtime\engine\private\world.cpp:6065]
[2019.04.29-17.39.48:218][120]LogWindows: Error: [Callstack] 0x00007fff3789a0c4 UE4Editor-Engine.dll!UEngine::TickWorldTravel() [d:\build\++ue4\sync\engine\source\runtime\engine\private\unrealengine.cpp:11786]
[2019.04.29-17.39.48:218][120]LogWindows: Error: [Callstack] 0x00007fff36ec0011 UE4Editor-Engine.dll!UGameEngine::Tick() [d:\build\++ue4\sync\engine\source\runtime\engine\private\gameengine.cpp:1350]
[2019.04.29-17.39.48:219][120]LogWindows: Error: [Callstack] 0x00007ff675be6bb1 UE4Editor.exe!FEngineLoop::Tick() [d:\build\++ue4\sync\engine\source\runtime\launch\private\launchengineloop.cpp:3967]
[2019.04.29-17.39.48:219][120]LogWindows: Error: [Callstack] 0x00007ff675bf554c UE4Editor.exe!GuardedMain() [d:\build\++ue4\sync\engine\source\runtime\launch\private\launch.cpp:168]
[2019.04.29-17.39.48:220][120]LogWindows: Error: [Callstack] 0x00007ff675bf55ca UE4Editor.exe!GuardedMainWrapper() [d:\build\++ue4\sync\engine\source\runtime\launch\private\windows\launchwindows.cpp:145]
[2019.04.29-17.39.48:220][120]LogWindows: Error: [Callstack] 0x00007ff675c0316c UE4Editor.exe!WinMain() [d:\build\++ue4\sync\engine\source\runtime\launch\private\windows\launchwindows.cpp:275]
[2019.04.29-17.39.48:220][120]LogWindows: Error: [Callstack] 0x00007ff675c05b8e UE4Editor.exe!__scrt_common_main_seh() [d:\agent\_work\3\s\src\vctools\crt\vcstartup\src\startup\exe_common.inl:288]
[2019.04.29-17.39.48:221][120]LogWindows: Error: [Callstack] 0x00007fff881b7974 KERNEL32.DLL!UnknownFunction []
[2019.04.29-17.39.48:221][120]LogWindows: Error: [Callstack] 0x00007fff8864a271 ntdll.dll!UnknownFunction []
[2019.04.29-17.39.48:222][120]LogWindows: Error: 
[2019.04.29-17.39.48:227][120]LogExit: Executing StaticShutdownAfterError
[2019.04.29-17.39.48:229][120]LogWindows: FPlatformMisc::RequestExit(1)
```

## Configuration Notes
BP_GameMode sets seamless server travel to true.


BP_GameMode executes the ServerTravel command 4 seconds after loading the map, so the map is continuously
reloaded.

## Other Notes
The crash only occurs when the Houdini Terrain is in the scene. If you delete the Houdini Terrain from the scene, save, and then repeat the *Steps to Reproduce*, the crash does not occur and you will be able to run `.\ClientStart.ps1` and observe the map continuously reloading every 4 seconds.
