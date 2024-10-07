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
||  Project:     B2TT Leave No Trace - Stop Texture Animation            ||
||__________________________________)°(__________________________________||
||  Author:      Talia Tokugawa */string Script="B2TT_LNT_STAnim.lsl"/*  ||
||__________________________________)°(__________________________________||
||  Date:        2024-10-07        Version:     1.0                      ||
||__________________________________)°(__________________________________||
||  Description: Stops texture animation for all prims in the linkset,   ||
||                  then deletes itself. Leave no trace!                 ||
||__________________________________)°(__________________________________||
||  Instructions:                                                        ||
||       * Stops texture animation for all prims in the linkset.         ||
||       * Deletes itself after performing actions.                      ||
||       * Just like a good burner, leave no trace!                      ||
||__________________________________)°(__________________________________||
||  License: B2TT-LNT-STAnim.lsl © 2024 by Talia Tokugawa                ||
||           is licensed under                                           ||
||           Attribution-NonCommercial 4.0 International                 ||
|| ==)°(====)°(====)°(====)°(====)°(====)°(====)°(====)°(====)°(====)°(==||
||                                                                       ||
\*___)°(___States_/_Events_______________________________________________*/

default {
    state_entry() {
        llSetLinkTextureAnim(LINK_SET, FALSE, ALL_SIDES, 1, 1, 0.0, 0.0, 0.0);
        llWhisper(0, ")'( ["+pit+fuel+Script+" Leave-No-Trace!] )'(");
        llRemoveInventory(llGetScriptName());
    }
}

/*________________________________________________)°(___States_/_Events__*\
||           Thank you, Hope you find this useful, and Burn on!          ||
\*__________________________________)°(__________________________________*/
