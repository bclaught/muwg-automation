CoordMode, Mouse, Screen
SetKeyDelay, 50

^p::Pause
^r::Reload
^b::
{
InputBox, wordament, Enter Wordament Box
MouseClick, Left, 1285, 190
Send %wordament%
KeyWait, Enter, D
Sleep, 1000
MouseClick, Left, 1135, 375, , 15
MouseClick, Left, 1160, 225, , 15
MouseClick, Left, 800, 270, , 15
Sleep, 1000
NewLinePos := InStr(clipboard, "`r", , , 5)
ThirtyWords := InStr(clipboard, "`r", , , 35)
clipboard := SubStr(clipboard, NewLinePos + 1, ThirtyWords)
Send %clipboard%
}