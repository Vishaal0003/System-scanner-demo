@echo off
title Windows Security
mode con: cols=90 lines=28
color 0A



:: ---------- Header ----------
cls
echo ===============================================================
echo                 WINDOWS SECURITY SCANNER
echo ===============================================================
echo.
echo Press Y to start system scan.
choice /C Y /N
goto SCAN

:: ---------- Scan ----------
:SCAN
cls
color 0B
echo Defender Antivirus Service starting...
timeout /t 2 >nul
echo Firewall status: ACTIVE
timeout /t 2 >nul
echo Real-time protection: DISABLED
timeout /t 2 >nul

cls
echo Scanning your device for threats...
echo.

for %%p in (1 5 12 18 25 33 41 50 58 66 74 83 91 100) do (
    echo Scan progress: %%p%%
    ping 127.0.0.1 -n 1 -w 500 >nul
)

cls
color 0C
echo ===============================================================
echo                    THREATS DETECTED
echo ===============================================================
echo Threat name        : Trojan.Generic
echo Category           : Malware
echo Severity           : Critical
echo Affected component : System32 / Registry
echo Firewall alert     : Suspicious outbound traffic detected
timeout /t 5 >nul

goto COMPROMISED

:: ---------- Compromised ----------
:COMPROMISED
cls
color 4F
echo ===============================================================
echo                 SYSTEM STATUS: COMPROMISED
echo ===============================================================
echo Unauthorized activity detected on this device.
echo Remote access indicators have been identified.
echo Data integrity and privacy are at risk.
echo Immediate action is required.
echo.
pause
exit
