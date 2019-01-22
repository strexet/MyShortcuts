; iTunes Anywhere
; AutoHotkey Version: 1.x
; Language:       English
; Platform:       Win9x/NT
; Author:        Polyphenol <myemail@nowhere.com>
;
; Script Function:
;   Control iTunes from anywhere with hotkeys
;

#NoTrayIcon
#SingleInstance force
DetectHiddenWindows, on

#NumpadDiv::
IfWinNotExist, ahk_class iTunes
{
Run D:\iTunes\iTunes.exe  ;launch program
return
}

IfWinExist, ahk_class iTunes ; toggle minimize/restore
{
IfWinNotActive ; restores window
WinActivate
Else
WinMinimize ; minimizes windows
return
}

#NumpadMult::
IfWinExist, ahk_class iTunes
ControlSend, ahk_parent, ^{RIGHT}  ; > next
return

^NumpadMult::
IfWinExist, ahk_class iTunes
ControlSend, ahk_parent, ^{LEFT}  ; < previous
return

#NumpadEnter::
IfWinExist, ahk_class iTunes
ControlSend, ahk_parent, {SPACE}  ; play/pause toggle
return

; #;::
; IfWinExist, ahk_class iTunes
; ControlSend, ahk_parent, ^{UP}  ; vol up
; return

; #'::
; IfWinExist, ahk_class iTunes
; ControlSend, ahk_parent, ^{DOWN}  ; vol down
; return

; -------++

;endofscript