CoordMode, Mouse, Screen
SetKeyDelay, 75

^p::Pause
^r::Reload
^b::
{
InputBox, jumble, Enter Jumble
MouseClick, Left, 1280, 355, , 10
Send %jumble%
Send {Enter}
KeyWait, LButton, D
Sleep, 800
SendInput ^a
Sleep, 800
SendInput ^c
Sleep, 500
SendInput `b
MouseClick, Left, 700, 355, , 10
Sleep, 1000
Send %clipboard%
}

