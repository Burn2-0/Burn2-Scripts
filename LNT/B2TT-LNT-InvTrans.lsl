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
||  Project:     B2TT Leave No Trace - Inventory Transfer Script         ||
||__________________________________)°(__________________________________||
||  Author:      Talia Tokugawa */string Script="B2TT_LNT_InvTrans.lsl"/*||
||__________________________________)°(__________________________________||
||  Date:        2024-10-07        Version:     1.0                      ||
||__________________________________)°(__________________________________||
||  Description: Transfers inventory items with permissions checking,    ||
||                  leaves no trace behind!                              ||
||__________________________________)°(__________________________________||
||  Instructions:                                                        ||
||       * Checks item permissions before transferring.                  ||
||       * Transfers only when allowed, or logs failure.                 ||
||       * After all items have been processed, deletes itself.          ||
||       * Leave no trace! Burn on!                                      ||
||__________________________________)°(__________________________________||
||  License: B2TT-LNT-InvTrans © 2024 by Talia Tokugawa                  ||
||           is licensed under                                           ||
||           Attribution-NonCommercial 4.0 International                 ||
|| ==)°(====)°(====)°(====)°(====)°(====)°(====)°(====)°(====)°(====)°(==||
||                                                                       ||
\*___)°(___Configurables_________________________________________________*/

float delay = 0.2;
/*__________________________________________________)°(___Configurables__*\
||                                                                       ||
\*___)°(___Global_Vars___________________________________________________*/
list unsent = [];
/*____________________________________________________)°(___Global_Vars__*\
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
        if (36 != llStringLength(llGetObjectDesc())) {
            llOwnerSay("Key not detected. If this is the target prim, please add:\n" + (string)llGetKey() + "\n to the sender's description and then drop me into that prim instead.");
        } else { 
            key target = (key)llGetObjectDesc();
            integer n = llGetInventoryNumber(INVENTORY_ALL);
            integer i = 0;
            while (n > i) { 
                string name = llGetInventoryName(INVENTORY_ALL, i);
                integer p = llGetInventoryPermMask(name, MASK_NEXT);
                string inf;
                if ((p & PERM_COPY) && (p & PERM_TRANSFER)) {
                    unsent = unsent + name;
                    inf = "**insufficient perms**\nAdding to fail list";
                } else if (llGetScriptName() == name) {
                    inf = "**Self Ignore**";
                } else {
                    inf = (string)i + "/" + (string)n + ". " + name + "\n Owner:";
                    inf += PermStr(llGetInventoryPermMask(name, MASK_OWNER)) + "\n Next Owner:";
                    inf += PermStr(llGetInventoryPermMask(name, MASK_NEXT));
                    inf += "\nTransferring now....";
                    llGiveInventory(target, name);                    
                }
                llSleep(delay);
                ++i;
                llSetText(inf, <1, 1, 1>, 1.0);
            }            
        }
        if (unsent != []) llOwnerSay("Items not sent:\n" + llDumpList2String(unsent, "\n"));
        i = 6;
        llWhisper(0, ")'( [" + pit + fuel + Script + " Leave-No-Trace!] )'(");
        while (--i > 0) { 
            llSetText("Self Destruct\nIn " + (string)i + " secs", <1, 1, 1>, 1.0); 
            llSleep(1.0); 
        }
        llSetText("", <1, 1, 1>, 0.0);
        llSleep(delay);
        llRemoveInventory(llGetScriptName());
    }
}

/*________________________________________________)°(___States_/_Events__*\
||           Thank you, Hope you find this useful, and Burn on!          ||
\*__________________________________)°(__________________________________*/
