
project "tinyxml2"

	kind "staticlib"
	language "C++"

	targetdir ("bin/" .. outputDir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputDir .. "/%{prj.name}")

	files {
		"tinyxml2.h",
		"tinyxml2.cpp"
	}

	filter "system:windows"
		systemversion "latest"
		cppdialect "C++17"
		staticruntime "on"
	
	filter {"system:windows", "configurations:Release"}
		buildoptions "/MT"