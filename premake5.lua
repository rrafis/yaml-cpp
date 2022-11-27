project "yaml-cpp"
	kind "StaticLib"
	language "C++"
    staticruntime "On"

	targetdir (LibTargetDir)
	objdir (LibObjDir)

	files {
		"src/**.h",
		"src/**.cpp",
        "include/**.h",
	}

    includedirs {
        "include",
    }

	-- filter "platforms:Windows"
	filter "system:windows"
		systemversion "latest"
		cppdialect "C++17"

	-- filter "platforms:Linux"
	filter "system:linux"
		pic "On"
		systemversion "latest"
		cppdialect "C++17"
	
	-- filter "platforms:MacOS"
	filter "system:macosx"
		pic "On"
		cppdialect "C++17"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Development"
		runtime "Debug"
		optimize "on"
		symbols "on"

	filter "configurations:Shipping"
		runtime "Release"
		optimize "Full"
		symbols "off"