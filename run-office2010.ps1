# run-office2010.ps1
$exeUrl = "https://github.com/clickinformaticavillaramallo/Office2010/releases/download/1/Office.2010.exe"
$installer = "$env:TEMP\Office.2010.exe"

Write-Host "[*] Descargando Office 2010..." -ForegroundColor Yellow
Invoke-WebRequest -Uri $exeUrl -OutFile $installer -UseBasicParsing

Unblock-File -Path $installer

Write-Host "[*] Instalando Office 2010..." -ForegroundColor Green
# Ajusta los parámetros si tu instalador acepta otros switches
Start-Process $installer -ArgumentList "/quiet", "/norestart" -Wait

Write-Host "[+] Office 2010 instalado." -ForegroundColor Green