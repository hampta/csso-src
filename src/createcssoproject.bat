echo ====== Adding registry key...
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\VisualStudio\10.0\Projects\{8BC9CEB8-8B4A-11D0-8D11-00A0C91BC942}" /v DefaultProjectExtension /t REG_SZ /d vcproj /f
echo ====== Registry key added...
devtools\bin\vpc.exe /csso  /define:WORKSHOP_IMPORT_DISABLE /define:SIXENSE_DISABLE /define:NO_X360_XDK /define:RAD_TELEMETRY_DISABLED /define:DISABLE_ETW +appframework +datacache +datamodel +dedicated +inputsystem +gamedlls +engine +mathlib +tier0 +tier1 +tier2 +tier3 +vstdlib +particles +studiomdl +hlmv +vbsp +vvis_dll +vrad_dll +raytrace +studiorender +filesystem_stdio +materialsystem +shaderapidx9 +shaderapiempty +stdshader_dbg +stdshader_dx6 +stdshader_dx7 +stdshader_dx8 +stdshader_dx9 +vguimatsurface +vgui_dll +vgui_surfacelib +vgui_controls +matsys_controls +video_services +video_quicktime +video_webm +launcher +sourcevr +vtf +pet +dme_controls +sfmobjects +toolutils +vmt +commedit +vtex_dll +vtex_launcher +vpk +hammer_dll +hammer_launcher +fgdlib +shaderlib /mksln csso.sln /nop4add /nofpo
echo ====== Setting up symlink and project settings...
Powershell.exe -ExecutionPolicy Bypass -File creategameprojects.ps1
pause
