#Include, Lib/iControl.ahk

;Go to the next/prev screen
RWin & RShift::
Send {RCtrl Down}{RWin Down}{Left}{RWin Up}{RCtrl Up}
Return

RWin & Enter::
Send {RCtrl Down}{RWin Down}{Right}{RWin Up}{RCtrl Up}
Return




;Volume control
#NumpadAdd::
Send {Volume_Up}
Return

#NumpadSub::
Send {Volume_Down}
Return




;Turn Monitor Off
#Esc::
Sleep 850  ; Give user a chance to release keys (in case their release would wake up the monitor again).
; Turn Monitor Off:
SendMessage, 0x112, 0xF170, 2,, Program Manager  ; 0x112 is WM_SYSCOMMAND, 0xF170 is SC_MONITORPOWER.
; Note for the above: Use -1 in place of 2 to turn the monitor on.
; Use 1 in place of 2 to activate the monitor's low-power mode.
Return
