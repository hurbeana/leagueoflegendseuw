
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://riotgamespatcher-a.akamaihd.net/releases/live/installer/deploy/League%20of%20Legends%20installer%20EUW.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url

  softwareName  = 'leagueoflegendsEUW*'

  checksum      = '3BD13850BFD10EE8FA4A83DE3E4AAC386A88053C3EDD4BC4770D77D3DD1D3803'
  checksumType  = 'sha256'

  validExitCodes= @(0)
  silentArgs   = '--mode unattended'
}

Install-ChocolateyPackage @packageArgs









    








