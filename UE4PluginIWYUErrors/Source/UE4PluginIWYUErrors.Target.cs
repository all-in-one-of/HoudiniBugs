// Fill out your copyright notice in the Description page of Project Settings.

using UnrealBuildTool;
using System.Collections.Generic;

public class UE4PluginIWYUErrorsTarget : TargetRules
{
	public UE4PluginIWYUErrorsTarget(TargetInfo Target) : base(Target)
	{
		Type = TargetType.Game;

		ExtraModuleNames.AddRange( new string[] { "UE4PluginIWYUErrors" } );
	}
}
