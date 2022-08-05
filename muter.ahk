#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
 
SetTitleMatchMode RegEx
 
Run nircmd.exe setappvolume Spotify.exe 1
 
while true {
	WinWait, Advertisement$|Spotify$|Spotify Free$
	Run nircmd.exe setappvolume Spotify.exe 0
 
	WinWaitClose, Advertisement$|Spotify$|Spotify Free$
	Sleep, 500
	Run nircmd.exe setappvolume Spotify.exe 1
}
