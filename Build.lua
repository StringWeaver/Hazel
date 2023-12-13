-- premake5.lua

workspace "Hazel"
   architecture "x64"
   configurations { "Debug", "Release", "Dist" }
   startproject "Sandbox"

   OutputDir = "%{cfg.system}-%{cfg.architecture}/%{cfg.buildcfg}"
   -- Workspace-wide build options for MSVC
   filter "system:windows"
      buildoptions { "/EHsc", "/Zc:preprocessor", "/Zc:__cplusplus" }
      DllDir = "../Binaries/" .. OutputDir .. "/Hazel/Hazel.dll"
      ExeDir = "../Binaries/" .. OutputDir .. "/Sandbox"
      postbuildcommands{
         ("{COPY} %{DllDir} %{ExeDir}")
      }



group ""
	include "Hazel/Build.lua"
group ""
   include "Sandbox/Build.lua"