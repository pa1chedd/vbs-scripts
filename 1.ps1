# Definiere den Link zum Bild
$url = "https://image.stern.de/31721354/t/Fo/v3/w1440/r1/-/doener.jpg"

# Definiere den Speicherort, an dem das Bild gespeichert werden soll (zum Beispiel im Temp-Ordner)
$output = [System.IO.Path]::Combine([System.IO.Path]::GetTempPath(), "doener.jpg")

# Lade das Bild herunter
Invoke-WebRequest -Uri $url -OutFile $output

# Setze das heruntergeladene Bild als Wallpaper
Add-Type -TypeDefinition @"
using System;
using System.Runtime.InteropServices;
public class Wallpaper {
   [DllImport("user32.dll", CharSet = CharSet.Auto)]
   public static extern int SystemParametersInfo(int uAction, int uParam, string lpvParam, int fuWinIni);
}
"@
[Wallpaper]::SystemParametersInfo(20, 0, $output, 3)