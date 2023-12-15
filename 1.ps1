# Definiere den Link zum Bild
$url = "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2a6307b0-bf8c-4c90-9e5c-de4fc7922922/d7obwbx-9c4097f8-a958-4df2-b917-944be4aacc07.jpg/v1/fill/w_1024,h_576,q_75,strp/you_have_been_hacked_wallpaper_hd_by_psychobloodykiller_d7obwbx-fullview.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9NTc2IiwicGF0aCI6IlwvZlwvMmE2MzA3YjAtYmY4Yy00YzkwLTllNWMtZGU0ZmM3OTIyOTIyXC9kN29id2J4LTljNDA5N2Y4LWE5NTgtNGRmMi1iOTE3LTk0NGJlNGFhY2MwNy5qcGciLCJ3aWR0aCI6Ijw9MTAyNCJ9XV0sImF1ZCI6WyJ1cm46c2VydmljZTppbWFnZS5vcGVyYXRpb25zIl19.xDdfykxWJQ_l_ttcII_qbpF2DDHpcdzIZ9gAhfi-Hh4"

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
