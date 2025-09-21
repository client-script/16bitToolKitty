:: Can disable or enable different parts of the windows defender or the whole thing.
@echo off
:menu
cls
echo                  =======================================================
echo                          Do You Wish To Enable Or Disable Tools?        
echo                  =======================================================
echo.
echo.
echo 1. Enable
echo 2. Disable
set /p choice="Choose an option: "
if "%choice%"=="1" goto EnableMenu
if "%choice%"=="2" goto DisableMenu
goto menu






:: Enable Menu



:EnableMenu
cls
echo              ==========================================================================================
echo                        Please Select Which Features You Would Like To Enable Or Disable Below          
echo              ==========================================================================================
echo.
echo.
echo 1.    Enable Everything
echo 2.    Enable RealtimeMonitoring
echo 3.    Enable BehaviorMonitoring
echo 4.    Enable BlockAtFirstSeen
echo 5.    Enable IOAVProtection
echo 6.    Enable ScriptScanning
echo 7.    Enable ArchiveScanning
echo 8.    Enable EmailScanning
echo 9.    Enable RemovableDriveScanning
echo 10.   Enable ScanningMappedNetworkDrivesForFullScan
echo 11.   Enable ScanningNetworkFiles
echo 12.   Enable CatchupFullScan
echo 13.   Enable CatchupQuickScan
set /p choice="Choose an option: "
if "%choice%"=="1" goto EnableChoice1
if "%choice%"=="2" goto EnableChoice2
if "%choice%"=="3" goto EnableChoice3
if "%choice%"=="4" goto EnableChoice4
if "%choice%"=="5" goto EnableChoice5
if "%choice%"=="6" goto EnableChoice6
if "%choice%"=="7" goto EnableChoice7
if "%choice%"=="8" goto EnableChoice8
if "%choice%"=="9" goto EnableChoice9
if "%choice%"=="10" goto EnableChoice10
if "%choice%"=="11" goto EnableChoice11
if "%choice%"=="12" goto EnableChoice12
if "%choice%"=="13" goto EnableChoice13
echo Completed...
echo Press any key to go back!
pause >nul
goto EnableMenu

:EnableChoice1
PowerShell -Command "Set-MpPreference -DisableRealtimeMonitoring $false"
PowerShell -Command "Set-MpPreference -DisableBehaviorMonitoring $false"
PowerShell -Command "Set-MpPreference -DisableBlockAtFirstSeen $false"
PowerShell -Command "Set-MpPreference -DisableIOAVProtection $false"
PowerShell -Command "Set-MpPreference -DisableScriptScanning $false"
PowerShell -Command "Set-MpPreference -DisableArchiveScanning $false"
PowerShell -Command "Set-MpPreference -DisableEmailScanning $false"
PowerShell -Command "Set-MpPreference -DisableRemovableDriveScanning $false"
PowerShell -Command "Set-MpPreference -DisableScanningMappedNetworkDrivesForFullScan $false"
PowerShell -Command "Set-MpPreference -DisableScanningNetworkFiles $false"
PowerShell -Command "Set-MpPreference -DisableCatchupFullScan $false"
PowerShell -Command "Set-MpPreference -DisableCatchupQuickScan $false"
echo Completed...
echo Press any key to go back!
pause >nul
goto EnableMenu

:EnableChoice2
PowerShell -Command "Set-MpPreference -DisableRealtimeMonitoring $false"
echo Completed...
echo Press any key to go back!
pause >nul
goto EnableMenu

:EnableChoice3
PowerShell -Command "Set-MpPreference -DisableBehaviorMonitoring $false"
echo Completed...
echo Press any key to go back!
pause >nul
goto EnableMenu

:EnableChoice4
PowerShell -Command "Set-MpPreference -DisableBlockAtFirstSeen $false"
echo Completed...
echo Press any key to go back!
pause >nul
goto EnableMenu

:EnableChoice5
PowerShell -Command "Set-MpPreference -DisableIOAVProtection $false"
echo Completed...
echo Press any key to go back!
pause >nul
goto EnableMenu

:EnableChoice6
PowerShell -Command "Set-MpPreference -DisableScriptScanning $false"
echo Completed...
echo Press any key to go back!
pause >nul
goto EnableMenu

:EnableChoice7
PowerShell -Command "Set-MpPreference -DisableArchiveScanning $false"
echo Completed...
echo Press any key to go back!
pause >nul
goto EnableMenu

:EnableChoice8
PowerShell -Command "Set-MpPreference -DisableEmailScanning $false"
echo Completed...
echo Press any key to go back!
pause >nul
goto EnableMenu

:EnableChoice9
PowerShell -Command "Set-MpPreference -DisableRemovableDriveScanning $false"
echo Completed...
echo Press any key to go back!
pause >nul
goto EnableMenu

:EnableChoice10
PowerShell -Command "Set-MpPreference -DisableScanningMappedNetworkDrivesForFullScan $false"
echo Completed...
echo Press any key to go back!
pause >nul
goto EnableMenu

:EnableChoice11
PowerShell -Command "Set-MpPreference -DisableScanningNetworkFiles $false"
echo Completed...
echo Press any key to go back!
pause >nul
goto EnableMenu

:EnableChoice12
PowerShell -Command "Set-MpPreference -DisableCatchupFullScan $false"
echo Completed...
echo Press any key to go back!
pause >nul
goto EnableMenu

:EnableChoice13
PowerShell -Command "Set-MpPreference -DisableCatchupQuickScan $false"
echo Completed...
echo Press any key to go back!
pause >nul
goto EnableMenu



:: Disable Menu



:DisableMenu
cls
echo              ==========================================================================================
echo                        Please Select Which Features You Would Like To Enable Or Disable Below          
echo              ==========================================================================================
echo.
echo.
echo 1.    Disable Everything
echo 2.    Disable RealtimeMonitoring
echo 3.    Disable BehaviorMonitoring
echo 4.    Disable BlockAtFirstSeen
echo 5.    Disable IOAVProtection
echo 6.    Disable ScriptScanning
echo 7.    Disable ArchiveScanning
echo 8.    Disable EmailScanning
echo 9.    Disable RemovableDriveScanning
echo 10.   Disable ScanningMappedNetworkDrivesForFullScan
echo 11.   Disable ScanningNetworkFiles
echo 12.   Disable CatchupFullScan
echo 13.   Disable CatchupQuickScan
set /p choice="Choose an option: "
if "%choice%"=="1" goto DisableChoice1
if "%choice%"=="2" goto DisableChoice2
if "%choice%"=="3" goto DisableChoice3
if "%choice%"=="4" goto DisableChoice4
if "%choice%"=="5" goto DisableChoice5
if "%choice%"=="6" goto DisableChoice6
if "%choice%"=="7" goto DisableChoice7
if "%choice%"=="8" goto DisableChoice8
if "%choice%"=="9" goto DisableChoice9
if "%choice%"=="10" goto DisableChoice10
if "%choice%"=="11" goto DisableChoice11
if "%choice%"=="12" goto DisableChoice12
if "%choice%"=="13" goto DisableChoice13
echo Completed...
echo Press any key to go back!
pause >nul
goto DisableMenu

:DisableChoice1
PowerShell -Command "Set-MpPreference -DisableRealtimeMonitoring $true"
PowerShell -Command "Set-MpPreference -DisableBehaviorMonitoring $true"
PowerShell -Command "Set-MpPreference -DisableBlockAtFirstSeen $true"
PowerShell -Command "Set-MpPreference -DisableIOAVProtection $true"
PowerShell -Command "Set-MpPreference -DisableScriptScanning $true"
PowerShell -Command "Set-MpPreference -DisableArchiveScanning $true"
PowerShell -Command "Set-MpPreference -DisableEmailScanning $true"
PowerShell -Command "Set-MpPreference -DisableRemovableDriveScanning $true"
PowerShell -Command "Set-MpPreference -DisableScanningMappedNetworkDrivesForFullScan $true"
PowerShell -Command "Set-MpPreference -DisableScanningNetworkFiles $true"
PowerShell -Command "Set-MpPreference -DisableCatchupFullScan $true"
PowerShell -Command "Set-MpPreference -DisableCatchupQuickScan $true"
echo Completed...
echo Press any key to go back!
pause >nul
goto DisableMenu

:DisableChoice2
PowerShell -Command "Set-MpPreference -DisableRealtimeMonitoring $true"
echo Completed...
echo Press any key to go back!
pause >nul
goto DisableMenu

:DisableChoice3
PowerShell -Command "Set-MpPreference -DisableBehaviorMonitoring $true"
echo Completed...
echo Press any key to go back!
pause >nul
goto DisableMenu

:DisableChoice4
PowerShell -Command "Set-MpPreference -DisableBlockAtFirstSeen $true"
echo Completed...
echo Press any key to go back!
pause >nul
goto DisableMenu

:DisableChoice5
PowerShell -Command "Set-MpPreference -DisableIOAVProtection $true"
echo Completed...
echo Press any key to go back!
pause >nul
goto DisableMenu

:DisableChoice6
PowerShell -Command "Set-MpPreference -DisableScriptScanning $true"
echo Completed...
echo Press any key to go back!
pause >nul
goto DisableMenu

:DisableChoice7
PowerShell -Command "Set-MpPreference -DisableArchiveScanning $true"
echo Completed...
echo Press any key to go back!
pause >nul
goto DisableMenu

:DisableChoice8
PowerShell -Command "Set-MpPreference -DisableEmailScanning $true"
echo Completed...
echo Press any key to go back!
pause >nul
goto DisableMenu

:DisableChoice9
PowerShell -Command "Set-MpPreference -DisableRemovableDriveScanning $true"
echo Completed...
echo Press any key to go back!
pause >nul
goto DisableMenu

:DisableChoice10
PowerShell -Command "Set-MpPreference -DisableScanningMappedNetworkDrivesForFullScan $true"
echo Completed...
echo Press any key to go back!
pause >nul
goto DisableMenu

:DisableChoice11
PowerShell -Command "Set-MpPreference -DisableScanningNetworkFiles $true"
echo Completed...
echo Press any key to go back!
pause >nul
goto DisableMenu

:DisableChoice12
PowerShell -Command "Set-MpPreference -DisableCatchupFullScan $true"
echo Completed...
echo Press any key to go back!
pause >nul
goto DisableMenu

:DisableChoice13
PowerShell -Command "Set-MpPreference -DisableCatchupQuickScan $true"
echo Completed...
echo Press any key to go back!
pause >nul
goto DisableMenu



::THE
::ADMIN
::SECTION



:Admin1
cls
echo              ===========================================================================================
echo                        Applying Administator Is Required To Access And Modify Windows Security          
echo              ===========================================================================================
echo.
echo.
echo Redirecting...
goto Admin2

:Admin2
setlocal EnableDelayedExpansion

net session >nul 2>&1
if errorlevel 1 (
    echo Requesting Administrator privileges...
    powershell -Command "Start-Process -FilePath '%~f0' -Verb RunAs"
    exit /b
)
goto Menu
