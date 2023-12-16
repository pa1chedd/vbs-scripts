# Öffnet die Seite <link>google.com</link> im Standardbrowser
Start-Process "http://theannoyingsite.com"

# Wartet 5 Sekunden, um sicherzustellen, dass die Seite geladen ist
Start-Sleep -Seconds 5

# Sendet die Tastatureingabe "abc" an das Browser-Fenster
Add-Type -TypeDefinition @"
using System;
using System.Runtime.InteropServices;
public class PInvoke {
    [DllImport("user32.dll")]
    public static extern void keybd_event(byte bVk, byte bScan, uint dwFlags, UIntPtr dwExtraInfo);
}
"@

$keys = @('A', 'B', 'C')

foreach ($key in $keys) {
    $keyCode = [System.Text.Encoding]::ASCII.GetBytes($key)[0]
    [PInvoke]::keybd_event($keyCode, 0, 0, [UIntPtr]::Zero)
    Start-Sleep -Milliseconds 100
    [PInvoke]::keybd_event($keyCode, 0, 2, [UIntPtr]::Zero)
}
