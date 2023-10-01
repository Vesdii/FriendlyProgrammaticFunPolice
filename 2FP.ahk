#Requires AutoHotkey v2.0
#NoTrayIcon

Blacklist := 0, GameDay := 0, ConfigProcessed := 0

Configure() {
	global Blacklist, GameDay

	loop read "2FP.config" {
		;OutputDebug A_LoopReadLine ; DEBUG
		if Blacklist is Array and not IsSpace(A_LoopReadLine) {
			local Line := StrSplit(A_LoopReadLine, [A_Space, A_Tab], unset, 2)[1]
			if not IsSpace(Line) {
				Blacklist.Push(Line)
				;OutputDebug Line " BLACKLISTED" ; DEBUG
			}
		} else if RegExMatch(A_LoopReadLine, "i)^Game Day is (Sun|Mon|Tues|Wednes|Thurs|Fri|Satur)day$") != 0 {
			GameDay := SubStr(A_LoopReadLine, 13)
		} else if A_LoopReadLine = "Blacklist:" {
			Blacklist := Array()
		}
	}

	global ConfigProcessed := A_Now
}

; To Protect and Serve
Patrol() {
	if DateDiff(FileGetTime("2FP.config"), ConfigProcessed, "Seconds") > 0 {
		Configure()
	}

	if A_DDDD = GameDay {
		return ; "Not my jurisdiction."
	}

	for p in Blacklist {
		if ProcessClose(p) {
			MsgBox "Game Day is " GameDay ".", "2FP", "Iconx T5"
		}
	}
}


Configure()
SetTimer Patrol, 1000