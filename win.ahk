#UseHook
SetTitleMatchMode, RegEx

Break::Suspend, Toggle

^!t::
  WinGetTitle, title, A
  MsgBox, %title%

CapsLock::Ctrl
^[::Send {Esc}
^p::Send {Up}
^n::Send {Down}
^b::Send {Left}
^f::Send {Right}
^a::Send {Home}
^e::Send {End}
!f::Send ^{Right}
!b::Send ^{Left}
^h::Send {BackSpace}
!^h::Send ^{BackSpace}
!d::Send ^{Del}
^s::Send ^f

#if not (WinActive("Visual Studio") or WinActive("MobaXterm") or WinActive("root@"))

^d::Send {Del}
^u::Send +{Home}{Del}
^k::Send +{End}{Del}

#if
