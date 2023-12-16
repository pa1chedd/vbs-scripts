[reflection.assembly]::loadwithpartialname("System.Windows.Forms")
[reflection.assembly]::loadwithpartialname("System.Drawing")
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Warning
$notify.visible = $true
$notify.showballoontip(10,"2 MINUTEN!","DU HAST NOCH 2 MINUTEN! `u{1F4A9} `u{1F4A9} `u{1F4A9}",[system.windows.forms.tooltipicon]::Error) 
