[reflection.assembly]::loadwithpartialname("System.Windows.Forms")
[reflection.assembly]::loadwithpartialname("System.Drawing")
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Warning
$notify.visible = $true
$notify.showballoontip(10,"2 MINUTEN!","DU HAST NOCH 2 MINUTEN! 😈😈😈",[system.windows.forms.tooltipicon]::Error) 
