#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance,Force

^!+a:: run steam://rungameid/714010
^!a::  run steam://rungameid/1172470
return 

;Opera
#o:: run C:\Users\Omistaja\AppData\Local\Programs\Opera GX\launcher.exe
return 

;KeepassKc
#k:: run "C:\Program Files\KeePassXC\KeePassXC.exe"

;Chrome
#n:: run "C:\Users\Omistaja\AppData\Local\Chromium\Application\chrome.exe", ,Max 


;Firefox
#f:: Run, firefox.exe, ,Max ;" --new-window "


;Steam
#numpadIns:: run C:\Program Files (x86)\Steam\Steam.exe 
#numpad0:: run C:\Program Files (x86)\Steam\Steam.exe

;epic 
^!NumpadPgUp:: Run C:\Program Files (x86)\Epic Games\Launcher\Portal\Binaries\Win32\EpicGamesLauncher.exe
^!Numpad9:: Run C:\Program Files (x86)\Epic Games\Launcher\Portal\Binaries\Win32\EpicGamesLauncher.exe

;Apex and Aimlab
#numpaddown:: 
run steam://rungameid/714010
run steam://rungameid/1172470c
#numpad2:: 
run steam://rungameid/714010
run steam://rungameid/1172470c
return  

;Factorio
#numpad1:: run steam://rungameid/427520
#numpadend:: run steam://rungameid/427520
return

;Brawlhalla
#NumpadLeft:: run steam://rungameid/291550
#Numpad4:: run steam://rungameid/291550

;Overwatch
#numpad5:: run, "C:\Program Files (x86)\Overwatch\_retail_\Overwatch.exe"
#numpadclear:: run, "C:\Program Files (x86)\Overwatch\_retail_\Overwatch.exe"

;Vscode 
#NumpadDel::run C:\Users\Omistaja\AppData\Local\Programs\Microsoft VS Code\Code.exe
#NumpadDot::run C:\Users\Omistaja\AppData\Local\Programs\Microsoft VS Code\Code.exe

;Terminal
#numpadenter::Run, "alacritty" 
#numpadadd::Run,   "alacritty" "-e" "powershell"  
#numpadsub::Run, "wt.exe" "Wsl", ,max

;AppsKey rebind to ctrl
AppsKey::Ctrl

ToggleBind(state) {
	Hotkey, CapsLock, Toggle 
	return	
}

ToggleBind(Off)

^CapsLock::ToggleBind(Toggle) 

CapsLock::
send {Escape}
return 
