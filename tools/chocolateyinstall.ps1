
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://riotgamespatcher-a.akamaihd.net/releases/live/installer/deploy/League%20of%20Legends%20installer%20EUW.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url

  softwareName  = 'leagueoflegendsEUW*'

  checksum      = 'c36adde03b80f5167ef651507e28af7323c756179aa5accb65a7c5c721d57844'
  checksumType  = 'sha256'

  validExitCodes= @(0)
  silentArgs   = '--mode unattended'
}

Install-ChocolateyPackage @packageArgs









    








