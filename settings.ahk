; (hash)                #    Windows logo key
; (exclamation mark)    !    ALT
; (caret)               ^    CTRL
; (plus)                +    Shift

^!n::
	FormatTime, TimeString,, yyyyMMdd-HH_mm_ss
	WinGet, WinID, ID, ahk_class CabinetWClass
	CurrentPath := ExplorerPath(WinID)
	FileCreateDir, %CurrentPath%/%TimeString%	
	;MsgBox, %CurrentPath%/%TimeString%	
	Return

ExplorerPath(_hwnd)
{
	for w in ComObjCreate("Shell.Application").Windows
		if (w.hwnd = _hwnd)
		{
			path := StrReplace(w.LocationURL, "file:///")
			return StrReplace(path, "%20", " ")
		}
}

::pritn::print
Return

::ks::ls
Return

::fro::for
Return

::]out::d19126805@mytudublin.ie
Return

::]127::127.0.0.1
Return

::]ip::
SendInput %A_IPAddress4%
Return

::]gm::lasith2013.l2n@gmail.com
Return

#e::
    Run, onecommander
    return

#a::
	Winset, AlwaysOnTop, ,A
	Return
	
^m::
	WinMinimize, A
	Return	

*F8::
	Run, mmsys.cpl
	WinWait,Sound
	SetKeyDelay, 10, 10
	ControlSend,SysListView321,{Down 5}
	SetKeyDelay, 10, 10
	ControlClick,&Set Default
	ControlClick,OK
	return
	
*F7::
	Run, mmsys.cpl
	WinWait,Sound
	SetKeyDelay, 10, 10
	ControlSend,SysListView321,{Down 1}
	SetKeyDelay, 10, 10
	ControlClick,&Set Default
	ControlClick,OK
	return
	
	
; Google Search highlighted text
^+c::
{
 Send, ^c
 Sleep 50
 Run, http://www.google.com/search?q=%clipboard%
 Return
}

^+f::
{
 Send, ^c
 Sleep 50
 Run, https://scholar.google.com/scholar?q=%clipboard%
 Return
}

; Thesaurus Search highlighted text
^+r::
{
 Send, ^c
 Sleep 50
 Run, https://www.powerthesaurus.org/%clipboard%/synonyms
;https://www.wordhippo.com/what-is/another-word-for/%clipboard%.html
;https://www.thesaurus.com/browse/%clipboard%
 Return
}

; Search on madura dictionary highlighted text
^+m::
{
 Send, ^c
 Sleep 50
 Run, https://www.maduraonline.com/?find=%clipboard%
 Return
}

; Open Google on brave
^+g::
{
 Send, ^c
 Sleep 50
 Run, https://www.google.com
 Return
}


;Launch Terminal
^!t::Run "C:\Users\lasit\AppData\Local\Microsoft\WindowsApps\wt.exe"

; Set Lock keys permanently
SetNumlockState, AlwaysOn
SetCapsLockState, AlwaysOff
SetScrollLockState, AlwaysOff
return


; Turn Caps Lock into a Shift key
Capslock::Shift
return


#c::
	Send ^c
	ClipWait
	Clipboard:=Clipboard ""
Return
