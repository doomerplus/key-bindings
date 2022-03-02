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

^p::Send {Up}
^n::Send {Down}
^b::Send {Left}
^f::Send {Right}

^a::Send {Home}
^e::Send {End}

; For Vim Half-Page Scrolling
#if not (WinActive("Visual Studio") or WinActive("Windows PowerShell"))
  ^u::Send +{Home}{Del}
  ^d::Send {Del}
#if

; Add `"suppressApplicationTitle": true` to Windows Terminal Profiles to Suppress Title Changes
; Use `Import-Module PSReadLine; Set-PSReadlineOption -EditMode Emacs` in Powershell Instead
#if not (WinActive("Windows PowerShell"))
  ; `stty -ixon` to make C-s forward search instead of sending start/stop characters
  ^s::Send ^f
  !^h::Send ^{BackSpace}

  !b::Send ^{Left}
  !f::Send ^{Right}

  !d::Send ^{Del}
  ^k::Send +{End}{Del}
#if

#if (WinActive("Windows PowerShell"))
  !^h::Send !{BackSpace}
#if