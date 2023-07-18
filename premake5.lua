project "ImGui"
	kind "StaticLib"
	language "C"
    cppdialect "C++17"
    staticruntime "on"

	targetdir ("../../../bin/" .. outputdir .. "/%{prj.name}")
	objdir ("../../../bin-int/" .. outputdir .. "/%{prj.name}")

    files
    {
        "imstb_truetype.h",
        "imconfig.h",
        "imgui.h",
        "imgui_internal.h",
        "imstb_rectpack.h",
        "imstb_textedit.h",
        "imgui_widgets.cpp",
        "imgui.cpp",
        "imgui_demo.cpp",
        "imgui_draw.cpp",
        "imgui_tables.cpp",
        "**.lua"
    }

	includedirs
	{
		"include"
	}

    filter "system:windows"
        systemversion "latest"
        
    filter "configurations:Debug"
    runtime "Debug"
    symbols "on"

    filter "configurations:Release"
    runtime "Release"
    optimize "on"