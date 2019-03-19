// Fill out your copyright notice in the Description page of Project Settings.

using UnrealBuildTool;
using System.Collections.Generic;

public class UE4EnginePluginCookEditorTarget : TargetRules
{
	public UE4EnginePluginCookEditorTarget(TargetInfo Target) : base(Target)
	{
		Type = TargetType.Editor;

		ExtraModuleNames.AddRange( new string[] { "UE4EnginePluginCook" } );
	}
}
