[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
$url = "https://github.com/RetroPie/RetroPie-Setup/releases/download/4.4/retropie-4.4-rpi2_rpi3.img.gz"
$output = "$PSScriptRoot\retropie.img.gz"
(New-Object System.Net.WebClient).DownloadFile($url, $output)
choco install etcher -y
powershell start powershell {Invoke-Expression $env:LOCALAPPDATA\Programs\balena-etcher\balenaEtcher.exe}
