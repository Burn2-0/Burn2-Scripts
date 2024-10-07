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
||  Project:     B2TT Leave No Trace - Display Key and Delete            ||
||__________________________________)°(__________________________________||
||  Author:      Talia Tokugawa */string Script="B2TT_LNT_DKD.lsl"/*     ||
||__________________________________)°(__________________________________||
||  Date:        2024-10-07        Version:     1.0                      ||
||__________________________________)°(__________________________________||
||  Description: Displays the object's key above it, sends it to owner,  ||
||                  then deletes itself. Leave no trace!                 ||
||__________________________________)°(__________________________________||
||  Instructions:                                                        ||
||       * Displays the object's key as hover text.                      ||
||       * Sends the key to the object's owner.                          ||
||       * Deletes itself after performing actions.                      ||
||       * Just like a good burner, leave no trace!                      ||
||__________________________________)°(__________________________________||
||  License: B2TT-LNT-DKD.lsl © 2024 by Talia Tokugawa                   ||
||           is licensed under                                           ||
||           Attribution-NonCommercial 4.0 International                 ||
|| ==)°(====)°(====)°(====)°(====)°(====)°(====)°(====)°(====)°(====)°(==||
||                                                                       ||
\*___)°(___States_/_Events_______________________________________________*/

default {
    state_entry() {
        llSetText((string)llGetKey(), <1., 1., 1.>, 1.0);
        llOwnerSay((string)llGetKey());
        llSleep(1.0);
        llWhisper(0, ")'( ["+pit+fuel+Script+" Leave-No-Trace!] )'(");
        llSleep(1.0);
        llRemoveInventory(llGetScriptName());
    }
}

/*________________________________________________)°(___States_/_Events__*\
||           Thank you, Hope you find this useful, and Burn on!          ||
\*__________________________________)°(__________________________________*/
