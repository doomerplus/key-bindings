#UseHook
SetTitleMatchMode, RegEx

Insert::Suspend, Toggle

^!t::
  WinGetTitle, title, A
  MsgBox, %title%

CapsLock::Ctrl
^[::Send {Esc}
+Esc::Send ~

^h::Send {BackSpace}
!^h::Send ^{BackSpace}

^p::Send {Up}
^n::Send {Down}
^b::Send {Left}
^f::Send {Right}

^a::Send {Home}
^e::Send {End}

; Add `"suppressApplicationTitle": true` to Windows Terminal profiles to suppress title changes
; Use `Import-Module PSReadLine; Set-PSReadlineOption -EditMode Emacs` in Powershell instead
#if not (WinActive("Visual Studio") or WinActive("Windows PowerShell"))
  ^d::Send {Del}
  !d::Send ^{Del}

  !b::Send ^{Left}
  !f::Send ^{Right}

  ^u::Send +{Home}{Del}
  ^k::Send +{End}{Del}
#if

#if not (WinActive("Windows PowerShell"))
  ; `stty -ixon` to make C-s forward search instead of sending start/stop characters
  ^s::Send ^f
#if