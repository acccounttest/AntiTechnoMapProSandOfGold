#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#SingleInstance force
#UseHook Off;
;#MaxHotkeysPerInterval 2
#Persistent
#KeyHistory 0
Process,Priority,,A
SetKeyDelay, -1, -1
SetWinDelay, 0
SetBatchLines, -1

; #Warn  ; Enable warnings to assist with detecting common errors.
;SHORTCUTS https://support.microsoft.com/en-us/windows/keyboard-shortcuts-in-windows-dcc61a57-8ff0-cffe-9796-cb9706c75eec
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
;CoordMode, Mouse, relative
;CoordMode, Mouse, Screen
CoordMode, Pixel

SetTitleMatchMode 2
;^<::Process, close, spring.exe

;DEACTIVATED
;#IfWinActive SpringLobby
;+<::Process, close, springlobby.exe


global mapjustchanged:=false
global unreadymode:=false

global considerpromap:=true
global considerantimap:=true


global forcemode:=0

global okok
global opa



global LastPixCol
global PixCol



global ini

ini = ./springtest.ini
IniRead, runNumber, %ini%, Main, runNumber, 0
global thismode=runNumber
;OR
;global thismode:=2


;
;global thismode=%runNumber%
;msgbox,%runNumber%
;runNumber+=0
;thisval:=0
;thisval+=%runNumber%
;msgbox,%thismode%
;if (thismode=2)
;{
;    msgbox,"SHIT!"
;}


global Outside
global Outside1
global Outside2
global Outside3
global Outside4


;Msgbox,%1%
;var0:=0
;var0=%1%
;if (%1%!=)
;{
; Msgbox,%1% 
;}
;else
;{
; ;Msgbox,%var0%
; WinActivate,SpringLobby
;}

WinActivate,SpringLobby

;tuto 1
;1080p
Top=-158
Left=541
Width=1526
Height=850
WinMove,ahk_exe springlobby.exe,,%Left%,%Top%,%Width%,%Height%

gosub, startmeon

if (Outside="")
{
IniRead, Outside, %ini%, Main, Outside, 0
IniRead, Outside1, %ini%, Main, Outside1, 0
IniRead, Outside2, %ini%, Main, Outside2, 0
IniRead, Outside3, %ini%, Main, Outside3, 0
IniRead, Outside4, %ini%, Main, Outside4, 0
}

;gosub, startmeon

global checkmemore:=true

global Leaver

SetTitleMatchMode 1
;#If WinActive("SpringLobby")
;okok:=WinActive("ahk_exe springlobby.exe")



;GuiWindowHwnd
;GuiWindowHwnd := WinExist("SpringLobby")
;#If ((!(WinActive("ahk_exe springlobby.exe") = 0x0)))
;!(GuiWindowHwnd = 0x0)
;tuto 2
#If (true)
;gosub, startmeon
myind:=0
contme:=1
;gosub,getpixnow

;while 1{
;if (thismode=1)
;{
;    ;||(thismode=2)) this is not needed but it could, to not break rooms anyway, the check will refuse to be unchecked, 
;    ;this explain why it is in another greyed color
;    ControlGet, isitcheckedlaunch, Checked , , %Outside4%, ahk_class wxWindowNR ahk_exe springlobby.exe
;    if (isitcheckedlaunch=1)
;    {
;        Control, Check, , %Outside1%, SpringLobby
;        Control, UnCheck, , %Outside3%, SpringLobby
;        Control, UnCheck, , %Outside4%, SpringLobby
;
;    }
;    Process, close, spring.exe
;    
;}
;Sleep,1000
;}


While (contme)
{
Sleep,1000
;msgbox,"start"
;gosub, startmeon


;Msgbox,%PixCol%
if (thismode=1){
;msgbox,"1"
gosub, thismode1
}
else if (thismode=2){
;msgbox,"IS 2"
gosub,getpixnow
gosub, thismode2
}
else if (thismode=3){
;msgbox,"SL SPECMODE IS 3"
gosub, thismode3
}
else if (thismode=4){
;msgbox,"SL SPECMODE IS 4"
gosub, thismode4
}
Sleep,2000
;okok3:=WinActive("ahk_exe springlobby.exe")
;;msgbox,%okok3%
;;msgbox,%okok%
;;#If (%okok3% = 0x0)
;If (!(okok3 = okok))
;{
;   if (checkmemore=true)
;   {
;    checkmemore:=false
;    msgbox,"dddd" 
;   }
;}
;Else
;{
;checkmemore:=true
;}
    

;myind+=1
;if(myind>=10)
;{
;;Reload
;;Run, %A_AhkPath% "%A_ScriptFullPath%" %PixCol% %Outside% %Outside1% %Outside2% %Outside3% %Outside4%
;;Run, %A_AhkPath% "%A_ScriptFullPath%" %thismode%
;}

}



;1 67off 65on 66off 68off
;2 66off 65off 67on OR mode1
;3 65 off 66on 67on 68 off
;4 always spec and always start the game 67off 65on 66off 68on
;return



;testing map color in a row
;F3::
;Send,{!}map{space}
;Send,^v
;Reload
;return

^F3::
if (forcemode=0)
{
forcemode:=1
Msgbox, 0,, SL FORCEMODE IS 1 ,0.5
}
else if (forcemode=1)
{
forcemode:=0
Msgbox, 0,, SL FORCEMODE IS 0 ,0.5
}
return

^F2::
if (thismode=1)
{
thismode:=2
;msgbox,"SL SPECMODE IS 2"
Msgbox, 0,, SL SPECMODE IS 2 ,0.2
}
else if (thismode=2)
{
thismode:=3
;msgbox,"SL SPECMODE IS 3"
Msgbox, 0,, SL SPECMODE IS 3 ,0.2
}
else if (thismode=3)
{
thismode:=4
;msgbox,"SL SPECMODE IS 4"
Msgbox, 0,, SL SPECMODE IS 4 ,0.2
}
else if (thismode=4)
{
thismode:=1
;msgbox,"SL SPECMODE IS 1"
Msgbox, 0,, SL SPECMODE IS 1 ,0.2
}
IniWrite, % thismode, %ini%, Main, runNumber
return
#If

contme2:=1
;okok3:=WinActive("ahk_exe springlobby.exe")
;#If ((okok3 = 0x0))
;While (contme2)
;{
;    Sleep,1000
;    
;}
    


;F2::
;okok:=WinActive("ahk_exe springlobby.exe")
;;msgbox,%okok%
;;if (WinActive("SpringLobby"))
;if ((okok = 0x0))
;{
;    Return
;}
;if (thismode=1)
;{
;thismode:=2
;;msgbox,"SL SPECMODE IS 2"
;Msgbox, 0,, SL SPECMODE IS 2 ,0.5
;}
;else if (thismode=2)
;{
;thismode:=3
;;msgbox,"SL SPECMODE IS 3"
;Msgbox, 0,, SL SPECMODE IS 3 ,0.5
;}
;else if (thismode=3)
;{
;thismode:=4
;;msgbox,"SL SPECMODE IS 4"
;Msgbox, 0,, SL SPECMODE IS 4 ,0.5
;}
;else if (thismode=4)
;{
;thismode:=1
;;msgbox,"SL SPECMODE IS 1"
;Msgbox, 0,, SL SPECMODE IS 1 ,0.5
;}
;return


;F3:
;gosub,zzz
;return

;zzz:
getpixnow:
;opa:= Control, Check, , ahk_class wxWindowNR ClassNN wxWindow4, A

;tuto 2
;okok:=WinActive("ahk_exe springlobby.exe")
okok:=1
;okok2:=WinExist("SpringLobby")
;msgbox,%okok%
;if (WinActive("SpringLobby"))
if ((okok = 0x0) AND forcemode=0)
{
    Return
}

WinGet, active_id, ID, ahk_exe springlobby.exe
;MsgBox, % active_id
;WinGetPos, x, y, w, h, %active_id%
WinGetPos , WinX, WinY, WinWidth, WinHeight
;msgbox, %WinX% %WinY% %WinWidth% %WinHeight%
GuiWindowHwnd := WinExist("SpringLobby")      ;stores the current Active Window Hwnd id number in "GuiWindowHwnd" variable
;                ;"A" for Active Window
;
ControlGetFocus, FocusedControl, ahk_id %GuiWindowHwnd% 
;
;
;ControlGet, FocusedControlId, Hwnd,, %FocusedControl%, ahk_id %GuiWindowHwnd%   ;stores the Hwnd Id number of the focused control found above in "FocusedControlId" variable
;


ControlGet, FocusedControlId, %GuiWindowHwnd%,, %FocusedControl%,wxWindow4
;GuiControlGet, opa , Pos, ahk_id %FocusedControlId%


;working
;ControlGetText, opa2, , ahk_id %FocusedControlId%
;;stores the focused control texts in "FocusedControlText" variable
;;"ahk_id" searches control by Hwnd id number
;
;msgbox,%FocusedControlId%
;MsgBox %opa% The X coordinate is %opax%. The Y coordinate is %opaY%. The width is %opaW%. The height is %opaH%.
;msgbox,%opa2%

;ControlGetPos , X, Y, Width, Height,wxWindow4
;msgbox, %X% aaa %Y% aaa %Width% aaa %Height%

;Click anywhere with only the next mouse left click(it will record it for the specific map prerecorded you can reedit if with shift, or alone it will use a global predefined area to use intead) or press enter to use automatically the map image area middle(could be not perfect like bluefield so certain maps can get predefined numbers of matching areas without exception but with color ranges)

;GuiWindowHwnd := WinExist("A")      ;stores the current Active Window Hwnd id number in "GuiWindowHwnd" variable
                ;"A" for Active Window
;ControlGetPos , xX, xY, Width, Height,GuiWindowHwnd
;Msgbox,%xX%
;Msgbox,%xY%
;GuiControlGet, opa3, Pos


;ControlGetPos , X, Y, Width, Height,wxWindow4


ControlGetPos , XX, YY, WWidth, HHeight,%FocusedControlId%
;msgbox, %XX% aaa %YY% aaa %WWidth% aaa %HHeight%

if (!XX)
{
    Return
}

ControlGetPos , X, Y, Width, Height,wxWindow4
;msgbox, %X% aaa %Y% aaa %Width% aaa %Height%

;squarex1:=X
;squarex2:=X + Width
;squarex3:=X
;squarex4:=X + Width
;
;squarey1:=Y
;squarey2:=Y
;squarey3:=Y + Height
;squarey4:=Y + Height



;myx:=X + Width/2
;; + WinX
;myy:=Y + Height/4
;; + WinY
;;for invert following the boxes horizontal or vbvertical when in the middle, but maybe depend the map symetric systematically ? there is a unique admin cmd for change more boxes
;;myx:=X + Width/4
;;myy:=Y + Height/2



;myx:=X + WinX + (Width/2.5)
;myy:=Y + WinY + Height/4


myx:=X + (Width/2) - 10
myy:=Y + Height/4 - 10

myx:=floor(myx)
myy:=floor(myy)
;MsgBox,%squarex1% %squarex2% %squarex3% %squarex4% %squarey1% %squarey2% %squarey3% %squarey4%
;MsgBox,%myx% %myy%


;MouseMove, %myx%,%myy%
;tuto 2
;okok2:=WinActive("ahk_exe springlobby.exe")
okok2:=11
;okok2:=WinExist("SpringLobby")
;msgbox,%okok%
;if (WinActive("SpringLobby"))
if (!(okok2 = 0x0) OR forcemode=1)
{
    ;msgbox,%myx%,%myy%
    gosub,startmealways
    ;GuiWindowHwnd := WinExist("SpringLobby")      ;stores the current Active Window Hwnd id number in "GuiWindowHwnd" variable
    ;                ;"A" for Active Windows
    ;
     ;stores the Hwnd Id number of the focused control found above in "FocusedControlId" variable
    ;
    ;fixed this is why we want add window coordinate, hope your theme is not interfering with this...
    myx+=%WinX%
    myy+=%WinY%
    myx+=22
    myy+=54
    ;tuto 3 problem with the window theme and more space between the real application and the extreme borders of the application not included
    ;MsgBox,%myx% %myy%
    PixelGetColor, PixCol3, %myx%,%myy%
    LastPixCol:=PixCol3
    ;MsgBox,%LastPixCol%
    ;msgbox,%PixCol3%
    Sleep,1000
    ;(WinActive("A")=okok)
    if ((true) OR forcemode=1)
    {   
        if (PixCol3=PixCol)
        {
            mapjustchanged:=false
        }
        else
        {
            PixCol:=PixCol3
            mapjustchanged:=true
        }
        
    }

}
;Msgbox,%myx%,%myy%
;MsgBox,%PixCol%
;tuto 4 in case of the last color found and actualized, note sometimes the last color was not(sometimes more times due to black and white, map not found color, another place idk why)

;myx=floor(myx)
;myy=floor(myy)
;;MouseMove,%myx%,%myy%
;color:=PixelColorSimple(GuiWindowHwnd,myx,myy)
;MsgBox,%color%

;GuiControlGet, MyEdit, Pos
;MsgBox The X coordinate is %MyEditX%. The Y coordinate is %MyEditY%. The width is %MyEditW%. The height is %MyEditH%.

;ControlGetText, opa, , ahk_class wxWindowNR
;GuiControlGet, OutputVar ,,ClassNN  wxWindow4
;GuiControlGet, OutputVar2 ,Pos,ClassNN  wxWindow4
;msgbox,%OutputVar%
;msgbox,%OutputVar2%
return




thismode:
ControlGet, isitcheckedlaunch, Checked , , %Outside2%, ahk_class wxWindowNR ahk_exe springlobby.exe
if (isitcheckedlaunch=1)
{
    ;ControlClick, %Outside2%
    Control, UnCheck, , %Outside2%, SpringLobby
}
Sleep,100
ControlGet, isitcheckedlaunch, Checked , , %Outside1%, ahk_class wxWindowNR ahk_exe springlobby.exe
if (isitcheckedlaunch=1)
{
    ;ControlClick, %Outside1%
    Control, UnCheck, , %Outside1%, SpringLobby
}
Sleep,100
;msgbox,Outside3 %Outside3%

if (unreadymode=false)
{
    ControlGet, isitcheckedlaunch, Checked , , %Outside3%, ahk_class wxWindowNR ahk_exe springlobby.exe
    if (isitcheckedlaunch=0)
    {
        ;ControlClick, %Outside3%
        Control, Check, , %Outside3%, SpringLobby
    }
}
else{
    if (mapjustchanged=true)
    {
        ControlGet, isitcheckedlaunch, Checked , , %Outside3%, ahk_class wxWindowNR ahk_exe springlobby.exe
        if (isitcheckedlaunch=1)
        {
            Control, UnCheck, , %Outside3%, SpringLobby
        } 
    }
}

;ControlClick, %Outside2%;off
;ControlClick, %Outside1%;off
;ControlClick, %Outside3%;on
return

thismode1:
;ControlGet, isitcheckedspec, Checked , , %Outside1%, ahk_class wxWindowNR ahk_exe springlobby.exe
;msgbox,%isitcheckedspec%
;if (isitcheckedspec=1)
;{
;ControlGet, isitcheckedlaunch, Checked , , %Outside4%, ahk_class wxWindowNR ahk_exe springlobby.exe
;if (isitcheckedlaunch=1)
;{
;;MsgBox, isitcheckedlaunch ?--> %isitcheckedlaunch%
;;below does not works
;;Control, Check,, Button75, ahk_class wxWindowNR ahk_exe springlobby.exe,auto-launch game
;;Control, Check,,Button75, ahk_class wxWindowNR ahk_exe springlobby.exe
;;Control, Check,,Button75, ahk_class wxWindowNR,A
;;Control, SubCommand , Value, Control, WinTitle, WinText, ExcludeTitle, ExcludeText
;;Control, Check, , ahk_class wxWindowNR ahk_id ClassNN: Button78, A
;}
;}

;below works
ControlGet, isitcheckedlaunch, Checked , , %Outside3%, ahk_class wxWindowNR ahk_exe springlobby.exe
if (isitcheckedlaunch=1)
{
    ;msgbox,"sddsdsd"
    ;ControlClick, %Outside3%
    ;Control, UnCheck, , <controlname>, <wintitle>
    Control, UnCheck, , %Outside3%, SpringLobby
}
Sleep,100
ControlGet, isitcheckedlaunch, Checked , , %Outside1%, ahk_class wxWindowNR ahk_exe springlobby.exe
if (isitcheckedlaunch=0)
{
    ;ControlClick, %Outside1%
    Control, Check, , %Outside1%, SpringLobby
}
Sleep,100
ControlGet, isitcheckedlaunch, Checked , , %Outside2%, ahk_class wxWindowNR ahk_exe springlobby.exe
if (isitcheckedlaunch=1)
{
    ;ControlClick, %Outside2%
    Control, UnCheck, , %Outside2%, SpringLobby
}
Sleep,100
ControlGet, isitcheckedlaunch, Checked , , %Outside4%, ahk_class wxWindowNR ahk_exe springlobby.exe
if (isitcheckedlaunch=1)
{
    ;ControlClick, %Outside4%
    Control, UnCheck, , %Outside4%, SpringLobby
}
;ControlClick, %Outside3%;off
;ControlClick, %Outside1%;on
;ControlClick, %Outside2%;off
;ControlClick, %Outside4%;off

;ControlSend, %Outside4%, {Space}
return

;1 67off 65on 66off 68off
;2 66off 65off 67on OR mode1
;3 65 off 66on 67on 68 off
;4 always spec and always start the game 67off 65on 66off 68on

thismode2:
;ClassNN:   ComboBox6
;Text:  Blue fields v2
;ControlGet, isitcheckedlaunch, Changed , , ComboBox6, ahk_class wxWindowNR ahk_exe springlobby.exe
;ControlGet, isitcheckedlaunch, Choice , , ComboBox6, ahk_class wxWindowNR ahk_exe springlobby.exe
;Msgbox,%isitcheckedlaunch%

unreadymode:=false

if (considerpromap)
{   
    ;ClassNN:    wxWindow4
    ;Text:   panel
    ;    x: 759  y: 159  w: 334  h: 162
    ;Client: x: 732  y: 75   w: 332  h: 160

    ;bluepixelfound:=false
    ;Pixels := [{c: 0x009900, x: 346, y: 44}]
    ;    for Each, Pixel in Pixels
    ;    {
    ;        PixelGetColor, PixCol, Pixel.x, Pixel.y
    ;        ;if (PixCol = Pixel.c)
    ;        if ((PixCol[0-1] = "00") and (PixCol[2] = "9"))
    ;        {
    ;           bluepixelfound:=true 
    ;           break
    ;        }
    ;           
    ;    }
    ;msgbox,%PixCol%
    ;0099F6 if used with a last param to getpixel, RGB
    ;PixCol2=%PixCol%
    ;OR (PixCol2=0xF69900)
    ;tuto 5 blue maps
    if (PixCol=0xF69900) OR (PixCol=0xF69A00)
    {   
        if (LastPixCol=0xC0C0C0)
        {
            Msgbox, 0,, You miss a map previously and you were unsync and now it is a match,1.5
        }
        ;msgbox,"AAAA"
        gosub,thismode
        Return
    }
    ;sandofgold map
    if (PixCol=0x827D6C)
    {   
        gosub,thismode
        Return
    }
    ;tuto 5 green maps
    ;if ((PixCol=0xE59F0C) OR (PixCol=0x207520) OR (PixCol=0x39917B) OR (PixCol=0x415A14) OR (PixCol=0x124818) OR (PixCol=0x085710) OR (PixCol=0x2C6D41) OR (PixCol=0x008100) OR (PixCol=0x208331))
    ;Green_Fields_v4
    if (PixCol=0x397852)
    {
        gosub,thismode
        Return
    }
    ;else
    ;{
    ;    gosub,thismode1
    ;    Return
    ;}
    ;
}

;if (considerantimap)
;{
;FoundPos := InStr(isitcheckedlaunch,"Techno")
;;msgbox,%FoundPos%
;if (FoundPos)
;{
;        gosub,thismode1
;        Return
;}
;
;if (!(FoundPos))
;{
;    gosub,thismode
;}
;
;}
;else
;{
;    gosub,thismode1
;}

if (considerantimap)
{   
    ;msgbox,%PixCol%
    ;PixCol2=%PixCol%
    ;0x5A6169 was last other pixel found since its news only...
    ;tuto 5 techno maps
    if ((PixCol=0xCBCACC) OR (PixCol=0x5A6169) OR (PixCol=0x5B7162) OR (PixCol=0x5A7B91) OR (PixCol=0x566566) OR (PixCol=0xBECCC5) OR (PixCol=0x5A6D5D) OR (PixCol=0x5B605D) OR (PixCol=0x5A5F5F) OR (PixCol=0x575E5E) OR (PixCol=0x576362) OR (PixCol=0x565C5A) OR (PixCol=0x545C5A) OR (PixCol=0x58605C) OR (PixCol=0x5A6B5F) OR (PixCol=0x5F6A6E) OR (PixCol=0x60766D) OR (PixCol=0x5C7568) OR (PixCol=0x5D6B6B))
    {
        ;msgbox,"AAAA"
        gosub,thismode1
    }
    else
    {
        unreadymode:=true
        gosub,thismode
    }
    ;
    ;Return
}
else
{
    unreadymode:=true
    gosub,thismode
}
return

thismode3:
;ControlClick, %Outside1%;off
ControlGet, isitcheckedlaunch, Checked , , %Outside1%, ahk_class wxWindowNR ahk_exe springlobby.exe
if (isitcheckedlaunch=0)
{
    ;ControlClick, %Outside1%
    Control, Check, , %Outside1%, SpringLobby
}
Sleep,100
ControlGet, isitcheckedlaunch, Checked , , %Outside2%, ahk_class wxWindowNR ahk_exe springlobby.exe
if (isitcheckedlaunch=0)
{
    ;ControlClick, %Outside2%
    Control, Check, , %Outside2%, SpringLobby
}
Sleep,100
ControlGet, isitcheckedlaunch, Checked , , %Outside4%, ahk_class wxWindowNR ahk_exe springlobby.exe
if (isitcheckedlaunch=1)
{
    ;ControlClick, %Outside4%
    Control, UnCheck, , %Outside4%, SpringLobby
}
;ControlClick, %Outside1%;on
;ControlClick, %Outside2%;on
;ControlClick, %Outside4%;off
return

thismode4:
ControlGet, isitcheckedlaunch, Checked , , %Outside3%, ahk_class wxWindowNR ahk_exe springlobby.exe
if (isitcheckedlaunch=1)
{
    ;ControlClick, %Outside3%
    Control, UnCheck, , %Outside3%, SpringLobby
}
Sleep,100
ControlGet, isitcheckedlaunch, Checked , , %Outside1%, ahk_class wxWindowNR ahk_exe springlobby.exe
if (isitcheckedlaunch=0)
{
    ;ControlClick, %Outside1%
    Control, Check, , %Outside1%, SpringLobby
}
Sleep,100
ControlGet, isitcheckedlaunch, Checked , , %Outside2%, ahk_class wxWindowNR ahk_exe springlobby.exe
if (isitcheckedlaunch=1)
{
    ;ControlClick, %Outside2%
    Control, UnCheck, , %Outside2%, SpringLobby
}
Sleep,100
ControlGet, isitcheckedlaunch, Checked , , %Outside4%, ahk_class wxWindowNR ahk_exe springlobby.exe
if (isitcheckedlaunch=0)
{
    ;ControlClick, %Outside4%
    Control, Check, , %Outside4%, SpringLobby
}
;ControlClick, %Outside3%;off
;ControlClick, %Outside1%;on
;ControlClick, %Outside2%;off
;ControlClick, %Outside4%;on
return


PixelColorSimple(pc_wID,pc_x, pc_y) {
    if pc_wID
    {
    pc_hDC := DllCall("GetDC", "UInt", pc_wID)
    pc_fmtI := A_FormatInteger
    SetFormat, IntegerFast, Hex
    pc_c := DllCall("GetPixel", "UInt", pc_hDC, "Int", pc_x, "Int", pc_y, "UInt")
    pc_c := pc_c >> 16 & 0xff | pc_c & 0xff00 | (pc_c & 0xff) << 16
    pc_c .= ""
    SetFormat, IntegerFast, %pc_fmtI%
    DllCall("ReleaseDC", "UInt", pc_wID, "UInt", pc_hDC)
    return pc_c
    }
}

startmealways:
SearchText = Leave
;WinGet,herek,ID,A
;WinGet,hereko,ID,"SpringLobby"
;if (!(herek=hereko))
;{
;    Return
;}
WinGet, List, ControlList, A
Leav:=false
Loop, Parse, List, `n
{
    ControlGetText, Text, %A_LoopField%, A
    If (Text = SearchText)
        Leav := A_LoopField
}
;Leav := 
;Leaver:=RegExReplace(OutsideVar,"[^\d]+")
if (Leav){
    ;msgbox,"ssss"
    GuiWindowHwnd := WinExist("SpringLobby")
    ControlGetFocus, FocusedControl, ahk_id %GuiWindowHwnd%
    ;ControlGet, iscorr, Enabled,, %FocusedControl%,%Leav%
    ;ControlGet, iscorr, %GuiWindowHwnd%,, %FocusedControl%,Button70
    ;ControlGet, isitcheckedlaunch, Checked , , %Outside2%, ahk_class wxWindowNR ahk_exe springlobby.exe
    ControlGet, iscorr, Enabled , , %Leav%, ahk_class wxWindowNR ahk_exe springlobby.exe
    ;msgbox,%iscorr%
    if (iscorr=1)
    {
        waitnow:=false
        if !(Leaver)
        {
            waitnow:=true
        }
        Leaver:=true
        Sleep,3000
        if (waitnow=true)
        {
            gosub,startmeon
        }
    }
    else
    {
        Leaver:=false
    }
    
    
}
;else
;{
;    Leaver:=false
;}
return


startmeon:
;msgbox,"STARTMEON"
SearchText = Spectator
WinGet, List, ControlList, A
Loop, Parse, List, `n
{
    ControlGetText, Text, %A_LoopField%, A
    If (Text = SearchText)
        OutsideVar := A_LoopField
        ;MsgBox, % "ClassNN: "  ; you are storing the a_loopfield in OutsideVar and you could use it later
}
;MsgBox, % OutsideVar
Outsidenow:=RegExReplace(OutsideVar,"[^\d]+")
if (Outsidenow = ""){

    ;Sleep,1000
    ;gosub,startmeon
    ;Msgbox,"Problem identifying first checkbox generated randomly, need retry or cancel this operation"
    ;Msgbox,"The window must remain top all other to works FTM"
    Return
}
else
{
    Outside:=Outsidenow
}
var1=Button
Outside1:=Outside
Outside2:=Outside + 1
Outside3:=Outside + 2
Outside4:=Outside + 3
Outside1 = %var1%%Outside1%
Outside2 = %var1%%Outside2%
Outside3 = %var1%%Outside3%
Outside4 = %var1%%Outside4%
;Outside1 := Outside1
;Outside2 := Outside2
;Outside3 := Outside3
;Outside4 := Outside4
;MsgBox, Outside2 %Outside2%
IniWrite, % Outside, %ini%, Main, Outside
IniWrite, % Outside1, %ini%, Main, Outside1
IniWrite, % Outside2, %ini%, Main, Outside2
IniWrite, % Outside3, %ini%, Main, Outside3
IniWrite, % Outside4, %ini%, Main, Outside4
return




















;tuto delete all before
;31474E



;BF BOX RED 293B55
;
;
;penser à recharger deux fois en reprenant la deuieme ?
;envoyer le mouse click sur l'enregistrement de la coordonnées en mode relative a utout début du script
;rajouter reuse le click en tout début just avant de chercher dans l'app donc en bg ou fg il faut plutot envoyer le click sans avoir forcement besoin de laprendre en main même avant d'utiliser une technique qui permait de lire le pixel en arrière, voire créer un screen, dans ce cas selon la disposition de la fenetre habituelle en plein écran ou dans le screenshoot on pourrait réutiliser helpbotboxes mais il faut le corriger en démarrant sur numpad+numero au lieu de laligne principale que pour azzerty


;thismode:
;check enlever f2
;faire dans une boucle
;ajouter killer le spring.exe 
;ajouter un compteur en secondes dans la boucle pour attendre
;mais retrouver le parent de la fenetre, donc multi SL compatible, checker le parent
;ajouter dans le git
;
;

;ajouter func pour faire reellement le set de coches du mode en cours si besoin toutes les x secondes
;faire que si un certain mode on peut cocher une performance qui dit bcp plus souvent l'essentiel de la coche uniquement donc ajout d'un raccourci pour stopper le script mais il reprendra si ele fenetre est de nouveau changée entre une fois oui et une fois non (ou l'inverse)
;faire ajout d la fonction si spring détecté alorts lancer le précédant équivalent raccrouci, revient quand meme si on revient dans sl puis dans le jeu une fois
;
;
;rajouter la prtie scroll inverse
;rajouter les numéros si fonctionnel et si double fonctionnement réel comme config et numpad ou non ou autre ligne 
;rajouter la partie double emploi des coches
;rajouter l'anti afk pour éviter le ping
;rajouter 






;PixelColorSimple(pc_wID,pc_x, pc_y )
;{
;    if  pc_wID
;    {
;        pc_hDC :=   DllCall("GetDC", "UInt", pc_wID)
;        pc_fmtI :=  A_FormatInteger
;        SetFormat, IntegerFast, Hex
;        pc_c := DllCall("GetPixel", "UInt", pc_hDC, "Int", pc_x, "Int", pc_y, "UInt")
;        pc_c := pc_c >> 16 & 0xff | pc_c & 0xff00 | (pc_c & 0xff) << 16
;        pc_c .= ""
;        SetFormat, IntegerFast, %pc_fmtI%
;        DllCall("ReleaseDC", "UInt", pc_wID, "UInt", pc_hDC)
;        return  (pc_c)
;    }
;}




;;Coordinates are related to the window's client area
;PixelColorSimple(pc_wID, pc_x, pc_y) {
;    if (pc_wID) {
;        pc_hDC := DllCall("GetDC", "UInt", pc_wID)
;        pc_fmtI := A_FormatInteger
;        SetFormat, IntegerFast, Hex
;        pc_c := DllCall("GetPixel", "UInt", pc_hDC, "Int", pc_x, "Int", pc_y, "UInt")
;        pc_c := pc_c >> 16 & 0xff | pc_c & 0xff00 | (pc_c & 0xff) << 16
;        pc_c .= ""
;        SetFormat, IntegerFast, %pc_fmtI%
;        DllCall("ReleaseDC", "UInt", pc_wID, "UInt", pc_hDC)
;        return pc_c
;    }
;}
;
;;Avatar d'utilisateur
;;niveau 2
;;Xampa5
;;OP
;;·
;;il y a 2 a
;;There seems to be an issue when the red value is zero, it returns 0xFFFF instead of 0x00FFFF

;Pause,Toggle
