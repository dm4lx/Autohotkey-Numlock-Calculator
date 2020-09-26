;********************************************************************************************
; NUMlockCALC
;
; AutoHotkey Version: 1.1
; Language:           English
; Platform:           Windows Vista, 7, 8
; Author:             Jive Turkey (message me on the AHK forums or www.twitter.com/matthiew)
;
; Script Function:    Maps Num Lock key to open/activate/close calc.exe. Keeps Num Lock on.
;********************************************************************************************

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


SetNumLockState, AlwaysOn

NumLock::
	SetNumLockState, AlwaysOn
	IfWinExist, SpeedCrunch
		{
		IfWinActive, SpeedCrunch
			{
			WinClose, SpeedCrunch
			}
		else
			{
			WinActivate, SpeedCrunch
			}
		}
	else
		{
		Run calc
		WinActivate, SpeedCrunch
		}
	return