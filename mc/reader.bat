@echo off
setlocal enabledelayedexpansion

:: Set the folder path
set "folder=D:\APP\containers\mods\1.20.1\aur\extra"

:: Loop through all .toml and .jar files in the folder
for %%f in (%folder%\*.toml %folder%\*.jar) do (
    :: Print the desired format
    echo /modpacks/1.20.1/aur/extra/%%~nxf
)

endlocal