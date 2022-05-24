-- premake5.lua
workspace "HelloWorld"
   --filename "MyWorkspace_%{_ACTION or ''}"
   configurations { "Debug", "Release", "Dist" }

project "Shared"
   kind "SharedLib"
   language "C++"
   location "shared"
   targetdir "build/%{prj.name}/bin/%{cfg.buildcfg}"
   objdir "build/%{prj.name}/obj/%{cfg.buildcfg}"

   files 
   { 
       "%{prj.location}/**.h", 
       "%{prj.location}/**.cpp" 
   }

   filter "configurations:Debug"
      defines { "DEBUG" }
      symbols "On"

   filter "configurations:Release"
      defines { "NDEBUG" }
      optimize "On"

   filter "configurations:Release"
      defines { "NDEBUG" }
      optimize "On"

project "Static"
   kind "StaticLib"
   language "C++"
   location "static"
   targetdir "build/%{prj.name}/bin/%{cfg.buildcfg}"
   objdir "build/%{prj.name}/obj/%{cfg.buildcfg}"

   files 
   { 
       "%{prj.location}/**.h", 
       "%{prj.location}/**.cpp" 
   }

   filter "configurations:Debug"
      defines { "DEBUG" }
      symbols "On"

   filter "configurations:Release"
      defines { "NDEBUG" }
      optimize "On"

   filter "configurations:Release"
      defines { "NDEBUG" }
      optimize "On"

project "Test"
   kind "ConsoleApp"
   language "C++"
   location "test"
   targetdir "build/%{prj.name}/bin/%{cfg.buildcfg}"
   objdir "build/%{prj.name}/obj/%{cfg.buildcfg}"

   files 
   { 
       "%{prj.location}/**.h", 
       "%{prj.location}/**.cpp" 
   }

   includedirs
   {
       "shared/",
       "static/"
   }

   links
   {
       "Shared",
       "Static",
   }

   filter "configurations:Debug"
      defines { "DEBUG" }
      symbols "On"

   filter "configurations:Release"
      defines { "NDEBUG" }
      optimize "On"

   filter "configurations:Release"
      defines { "NDEBUG" }
      optimize "On"
