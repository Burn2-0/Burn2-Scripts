/* ==)°(====)°(====)°(====)°(====)°(====)°(====)°(====)°(====)°(====)°(==*\
/* */    string pit="https://github.com/Burn2-0/Burn2-Scripts/";      /* */
/* */            string fuel="blob/main/lnt/";                        /* */
/*__________________________________)°(__________________________________*\
||                         (                   )                         ||
||                       ( )\   (  (        ( /(                         ||
||                       )((_) ))\ )(   (   )(_))                        ||
||                      ((_)_ /((_(()\  )\ ((_)                          ||
||                       | _ (_))( ((_)_(_/|_  )                         ||
||                       | _ | || | '_| ' \ / /                          ||
||                       |___/\_,_|_| |_||_/___(                         ||
||__________________________________)°(__________________________________||
||  Project:     B2TT Leave No Trace - Simple Set Text                   ||
||__________________________________)°(__________________________________||
||  Author:      Talia Tokugawa */string Script="B2TT_LNT_SST.lsl"/*     ||
||__________________________________)°(__________________________________||
||  Date:        2024-10-07        Version:     1.0                      ||
||__________________________________)°(__________________________________||
||  Description: Sets text above object, then deletes itself             ||
||                  Leave no trace! Burn on!                             ||
||__________________________________)°(__________________________________||
||  Instructions:                                                        ||
||       * Sets text to object name and description.                     ||
||       * After that, script will delete itself.                        ||
||       * Just like a good burner, leave no trace!                      ||
||__________________________________)°(__________________________________||
||  License: B2TT-LNT-SST.lsl © 2024 by Talia Tokugawa                   ||
||           is licensed under                                           ||
||           Attribution-NonCommercial 4.0 International                 ||
|| ==)°(====)°(====)°(====)°(====)°(====)°(====)°(====)°(====)°(====)°(==||
||                                                                       ||
\*___)°(___States_/_Events_______________________________________________*/

default {
    state_entry() {
        llSetText(llGetObjectName()+"\n"+llGetObjectDesc(), llGetColor(0), 1.0);
        llWhisper(0, ")'( ["+pit+fuel+Script+" Leave-No-Trace!] )'(");
        llSleep(0.5);
        llRemoveInventory(llGetScriptName());
    }
}

/*________________________________________________)°(___States_/_Events__*\
||           Thank you, Hope you find this useful, and Burn on!          ||
\*__________________________________)°(__________________________________*/
