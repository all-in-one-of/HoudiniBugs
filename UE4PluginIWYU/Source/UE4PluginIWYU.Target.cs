// Fill out your copyright notice in the Description page of Project Settings.

using UnrealBuildTool;
using System.Collections.Generic;

public class UE4PluginIWYUTarget : TargetRules
{
	public UE4PluginIWYUTarget(TargetInfo Target) : base(Target)
	{
		Type = TargetType.Game;

		ExtraModuleNames.AddRange( new string[] { "UE4PluginIWYU" } );
	}
}
