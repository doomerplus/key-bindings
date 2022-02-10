#UseHook
SetTitleMatchMode, RegEx

Insert::Suspend, Toggle

^!t::
  WinGetTitle, title, A
  MsgBox, %title%

CapsLock::Ctrl
^[::Send {Esc}

^h::Send {BackSpace}
!^h::Send ^{BackSpace}
!d::Send ^{Del}

^p::Send {Up}
^n::Send {Down}
^b::Send {Left}
^f::Send {Right}

^a::Send {Home}
^e::Send {End}
!b::Send ^{Left}
!f::Send ^{Right}

; Add `"suppressApplicationTitle": true` to Windows Terminal profiles to suppress title changes
#if not (WinActive("Visual Studio") or WinActive("Windows PowerShell"))

; `stty -ixon` to make C-s forward search instead of sending start/stop characters
^s::Send ^f

^d::Send {Del}
^u::Send +{Home}{Del}
^k::Send +{End}{Del}

#if
