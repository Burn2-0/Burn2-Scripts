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
||  Project:     B2TT Leave No Trace - Set Touch Text for All Prims      ||
||__________________________________)°(__________________________________||
||  Author:      Talia Tokugawa */string Script="B2TT_LNT_STTAP.lsl";/*  ||
||__________________________________)°(__________________________________||
||  Date:        2024-10-07        Version:     1.0                      ||
||__________________________________)°(__________________________________||
||  Description: Sets touch text to empty for all prims in the linkset,  ||
||                  then deletes itself. Leave no trace!                 ||
||__________________________________)°(__________________________________||
||  Instructions:                                                        ||
||       * Sets touch text to empty for all prims in the linkset.        ||
||       * Deletes itself after performing actions.                      ||
||       * Just like a good burner, leave no trace!                      ||
||__________________________________)°(__________________________________||
||  License: B2TT-LNT-STTAP.lsl © 2024 by Talia Tokugawa                 ||
||           is licensed under                                           ||
||           Attribution-NonCommercial 4.0 International                 ||
|| ==)°(====)°(====)°(====)°(====)°(====)°(====)°(====)°(====)°(====)°(==||
||                                                                       ||
\*___)°(___States_/_Events_______________________________________________*/

default {
    state_entry() {
        integer link_count = llGetNumberOfPrims();
        integer link = 1;
        while (link <= link_count) {
            llSetLinkPrimitiveParamsFast(link, [PRIM_TEXT,"",<1,1,1>,1.0]);
            ++link;
        }
        llWhisper(0, ")'( ["+pit+fuel+Script+" Leave-No-Trace!] )'(");
        llRemoveInventory(llGetScriptName());
    }
}

/*________________________________________________)°(___States_/_Events__*\
||           Thank you, Hope you find this useful, and Burn on!          ||
\*__________________________________)°(__________________________________*/
