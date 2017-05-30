/*
    Author: GetSomePanda / Panda
    Modified: Sezon
    Helped: BoGuu
    SteamID: 76561198145366418
    File Name: fn_getRealTime.sqf
    Information: Get the real time.
*/
realTime = "extDB3" callExtension "9:LOCAL_TIME";
(owner _this) publicVariableClient "realTime";