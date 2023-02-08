#NoEnv
#Warn
SendMode Input
SetWorkingDir %A_ScriptDir% 
is_scaled := 0

Capslock & W::Send		{Media_Play_Pause}
Capslock & Q::Send		{Media_Prev}
Capslock & E::Send		{Media_Next}
Capslock & F::Send		{Volume_Mute}
Capslock & D::Send		{Volume_Up}
Capslock & S::Send		{Volume_Down}

Capslock & Space::
    if(is_scaled == 0)
        Run "\SetDpi.exe " 300 2
    else
        Run "\SetDpi.exe " 125 2
    is_scaled := !is_scaled
return

Capslock:: setCapslockState, AlwaysOff



