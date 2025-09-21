@echo off 
title FPS Mega Menu - Network Tools
color 4

:menu
cls
echo ======================================
echo            NETWORK TOOLS
echo ======================================
echo 1. IP Info Lookup (ip-api.com)
echo 2. WHOIS Domain Lookup
echo 3. View All Open Ports (netstat)
echo 4. DNS Record Lookup (A, MX, TXT)
echo 5. VirusTotal Hash Lookup
echo 6. MAC Vendor Lookup
echo 7. AbuseIPDB IP Check
echo 8. Multi-Geo IP Location Check
echo 9. IP Leak / Anonymity Check
echo 0. Exit
echo ======================================
set /p choice=Select an option: 

if "%choice%"=="1" goto ipinfo
if "%choice%"=="2" goto whois
if "%choice%"=="3" goto portscan
if "%choice%"=="4" goto dnsrecord
if "%choice%"=="5" goto virustotal
if "%choice%"=="6" goto maclookup
if "%choice%"=="7" goto abuseip
if "%choice%"=="8" goto multilocation
if "%choice%"=="9" goto whoer
if "%choice%"=="0" exit
goto menu

:ipinfo
cls
set /p ip=Enter IP address: 
curl "http://ip-api.com/json/%ip%"
pause
goto menu

:whois
cls
set /p whoisDomain=Enter domain for WHOIS lookup: 
start https://who.is/whois/%whoisDomain%
echo WHOIS page opened in browser.
pause
goto menu

:portscan
cls
echo === ALL OPEN PORTS (netstat) ===
netstat -ano
pause
goto menu

:dnsrecord
cls
set /p dnstarget=Enter domain to lookup DNS records: 
start "" "https://dnschecker.org/all-dns-records-of-domain.php?domain=google.com&query=%dnstarget%&rtype=ALL&dns=google"
echo DNS records page opened in browser.
pause
goto menu

:virustotal
cls
set /p hash=Enter file hash (SHA256/MD5/SHA1): 
start https://www.virustotal.com/gui/search/%hash%
echo VirusTotal scan page opened in browser.
pause
goto menu

:maclookup
cls
set /p mac=Enter MAC address (e.g. 44:38:39:ff:ef:57): 
start https://macvendors.com/query/%mac%
echo MAC vendor info page opened in browser.
pause
goto menu

:abuseip
cls
set /p aip=Enter IP to check on AbuseIPDB: 
start https://www.abuseipdb.com/check/%aip%
echo AbuseIPDB page opened in browser.
pause
goto menu

:multilocation
cls
set /p mlip=Enter IP to lookup multiple geo-locations: 
start https://www.iplocation.net/ip-lookup?query=%mlip%
echo IP location info page opened in browser.
pause
goto menu

:whoer
cls
set /p whoip=Enter IP for anonymity check: 
start https://whoer.net/check?ip=%whoip%
echo Whoer.net page opened in browser.
pause
goto menu
