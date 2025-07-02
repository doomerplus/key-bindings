#UseHook
SetTitleMatchMode, RegEx

#t::
  WinGetActiveTitle, Title
  MsgBox, "%Title%"
  return

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

; Add `"window.title": "VSCode ${focusedView}"` to VS Code settings.json
; Add `"suppressApplicationTitle": true` to Terminal profile
; Add `Import-Module PSReadLine; Set-PSReadlineOption -EditMode Emacs` to Powershell profile

#if not (WinActive("VSCode Text Editor|Microsoft Visual Studio|Windows PowerShell"))
  ^u::Send +{Home}{Del}
  ^d::Send {Del}
#if

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
