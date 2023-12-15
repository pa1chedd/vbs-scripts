# Setzen Sie den Wert des Registrierungsschlüssels, um den Dark Mode zu aktivieren
Set-ItemProperty -Path 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize' -Name 'AppsUseLightTheme' -Value 0
Set-ItemProperty -Path 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize' -Name 'SystemUsesLightTheme' -Value 0

# Starten Sie den Explorer neu, um die Änderungen zu übernehmen
Stop-Process -Name Explorer
