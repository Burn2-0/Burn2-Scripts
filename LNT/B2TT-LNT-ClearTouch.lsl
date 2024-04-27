lsl
Copy code
/* ==)°(====)°(====)°(====)°(====)°(====)°(====)°(====)°(====)°(====)°(==*\
||                                                                       ||
||                         (                   )                         ||
||                       ( )\   (  (        ( /(                         ||
||                       )((_) ))\ )(   (   )(_))                        ||
||                      ((_)_ /((_(()\  )\ ((_)                          ||
||                       | _ (_))( ((_)_(_/|_  )                         ||
||                       | _ | || | '_| ' \)/ /                          ||
||                       |___/\_,_|_| |_||_/___(                         ||
||                                                                       ||
||__________________________________)°(__________________________________||
||                                                                       ||
||  Project:     B2TT: Clear TouchText ( LNT Edition )                   ||
||__________________________________)°(__________________________________||
||                                                                       ||
||  Script:      B2TT_ClearTouchText_LNT.lsl                    ||
||__________________________________)°(__________________________________||
||                                                                       ||
||  Author:      Talia Tokugawa                                          ||
||__________________________________)°(__________________________________||
||                                                                       ||
||  Date:        2024-01-26                                              ||
||__________________________________)°(__________________________________||
||                                                                       ||
||  Version:     1.0                                                     ||
||__________________________________)°(__________________________________||
||                                                                       ||
||  Description: Removes touch text and deletes itself after set-up.     ||
||               Celebrating the ephemeral art of Burning Man,           ||
||               this script vanishes like the traceless desert winds.   ||
||__________________________________)°(__________________________________||
||                                                                       ||
||  Instructions:                                                        ||
||       * Drop into any object.                                         ||
||       * Text and script will self-delete on activation.               ||
||       * Reflect on the impermanence of digital creations.             ||
||__________________________________)°(__________________________________||
||                                                                       ||
||  Licence: B2TT-LNT-Scripts © 2024 by Talia Tokugawa CC BY-NC-SA 4.0   ||                                          ||
||           Creative Commons Attribution-NonCommercial 4.0              ||
||           International License.                                      ||
||__________________________________)°(__________________________________||
||                                                                       ||
\* ==)°(====)°(====)°(====)°(====)°(====)°(====)°(====)°(====)°(====)°(==*/

/*___)°(___States_/_Events________________________________________________*/
default
{
    state_entry() {
        llWhisper(0, "Experience the impermanence: Visit Burn2 at http://maps.secondlife.com/secondlife/Burning%20Man-%20Deep%20Hole/232/35/24");
        llSetTouchText("");
        llRemoveInventory(llGetScriptName());
    }
}
/*________________________________________________)°(___States_/_Events___*/