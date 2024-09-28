/* ==)°(====)°(====)°(====)°(====)°(====)°(====)°(====)°(====)°(====)°(==*\ 
/* */    string pit="https://github.com/Burn2-0/Burn2-Scripts/";      /* */
/* */                string fuel="blob/main/Audio/";                  /* */
/*__________________________________)°(__________________________________*\
||                         (                   )                         ||
||                       ( )\   (  (        ( /(                         ||
||                       )((_) ))\ )(   (   )(_))                        ||
||                      ((_)_ /((_(()\  )\ ((_)                          ||
||                       | _ (_))( ((_)_(_/|_  )                         ||
||                       | _ | || | '_| ' \)/ /                          ||
||                       |___/\_,_|_| |_||_/___(                         ||
||__________________________________)°(__________________________________||
||       Zoren's Sound Killer Oneshot                                    ||
||    This script stops sounds playing from the object it's put in.      ||
||                             That's all it does ~ZM                    ||
||__________________________________)°(__________________________________||
||  Author:   Zoren Manray       */string Script="B2ZM_AU_SSTOP.lsl";  /*||
||__________________________________)°(__________________________________||
||   Instructions:                                                       ||
||       * Usually a good idea to store all your oneshots in the same    ||
||         folder in your inventory.                                     ||
||       * Drop this into the prim that is playing the sound.            ||
||         (As Zorn said, "That's all... ")                              ||
||__________________________________)°(__________________________________||
||       Zoren's Sound Killer OneShot                                    ||
||    © 2024 by Zoren Manray is licensed under Creative Commons          ||
||                  Attribution-NonCommercial 4.0 International          ||
|| ==)°(====)°(====)°(====)°(====)°(====)°(====)°(====)°(====)°(====)°(==||
||                                                                       ||
\*___)°(___States_/_Events_______________________________________________*/

default {
    state_entry() {
        llSay(0, "Stopping sounds");
        llStopSound( );
        llWhisper(0, ")'( ["+pit+fuel+Script+" Leave-No-Trace!] )'("); 
        llSleep(0.5);
        llRemoveInventory(llGetScriptName());
    }
}

/*________________________________________________)°(___States_/_Events__*\
||           Thank you, Hope you find this useful, and Burn on!          ||
\*__________________________________)°(__________________________________*/
