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
||  Project:     B2TT Leave No Trace - Inventory Permissions Display     ||
||__________________________________)°(__________________________________||
||  Author:      Talia Tokugawa */string Script="B2TT_LNT_IPD.lsl"/*     ||
||__________________________________)°(__________________________________||
||  Date:        2024-10-07        Version:     1.0                      ||
||__________________________________)°(__________________________________||
||  Description: Displays inventory items' permissions and creator key,  ||
||                  then deletes itself. Leave no trace!                 ||
||__________________________________)°(__________________________________||
||  Instructions:                                                        ||
||       * Displays inventory items' permissions and creator key.        ||
||       * Deletes itself after performing actions.                      ||
||       * Just like a good burner, leave no trace!                      ||
||__________________________________)°(__________________________________||
||  License: B2TT-LNT-IPD.lsl © 2024 by Talia Tokugawa                   ||
||           is licensed under                                           ||
||           Attribution-NonCommercial 4.0 International                 ||
|| ==)°(====)°(====)°(====)°(====)°(====)°(====)°(====)°(====)°(====)°(==||
||                                                                       ||
\*___)°(___Functions_____________________________________________________*/

string PermStr(integer Perm) {
    string PermString;
    if (Perm & PERM_MODIFY)     PermString += "(Modify)/";
    else                        PermString += "(No Modify)/";
    if (Perm & PERM_COPY)       PermString += "(Copy)/";
    else                        PermString += "(No Copy)/";
    if (Perm & PERM_TRANSFER)   PermString += "(Transfer)";
    else                        PermString += "(No Transfer)";
    return PermString;
}
/*______________________________________________________)°(___Functions__*\
||                                                                       ||
\*___)°(___States_/_Events_______________________________________________*/
default {
    state_entry() {
        integer num = llGetInventoryNumber(INVENTORY_ALL);
        integer x = 0;
        while (x < num) {
            string name = llGetInventoryName(INVENTORY_ALL, x);
            string inf = (string)x + ". " + name + "\n Owner:";
            inf += PermStr(llGetInventoryPermMask(name, MASK_OWNER)) + "\n Next Owner:";
            inf += PermStr(llGetInventoryPermMask(name, MASK_NEXT));
            inf += "\n Creator Key:" + (string)llGetInventoryCreator(name);
            llWhisper(0, inf);
            ++x;
        }
        llWhisper(0, ")'( ["+pit+fuel+Script+" Leave-No-Trace!] )'(");
        llRemoveInventory(llGetScriptName());
    }
}

/*________________________________________________)°(___States_/_Events__*\
||           Thank you, Hope you find this useful, and Burn on!          ||
\*__________________________________)°(__________________________________*/
