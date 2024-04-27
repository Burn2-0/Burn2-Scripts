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
||  Project:     B2TT Permission Gallery ( LNT Edition )                 ||
||__________________________________)°(__________________________________||
||                                                                       ||
||  Script:      B2TT_PermGallery_LNT.lsl                                    ||
||__________________________________)°(__________________________________||
||                                                                       ||
||  Author:      Talia Tokugawa                                          ||
||__________________________________)°(__________________________________||
||                                                                       ||
||  Date:        2024-01-26                                              ||
||__________________________________)°(__________________________________||
||                                                                       ||
||  Version:     1.4                                                     ||
||__________________________________)°(__________________________________||
||                                                                       ||
||  Description: A gallery designed to let you check the texture perms   ||
||               whilst you browse the images.                           ||
||__________________________________)°(__________________________________||
||                                                                       ||
||  Instructions:                                                        ||
||       * Drop images inside.                                           ||
||       * Drop scripts inside.                                          ||
||       * Hope it don't explode....                                     ||
||       * Click to browse.                                              ||
||       * Hope it don't explode....                                     ||
||__________________________________)°(__________________________________||
||                                                                       ||
||  Licence: B2TT-LNT-Scripts © 2024 by Talia Tokugawa                   ||
||           is licensed under                                           ||
||           Attribution-NonCommercial 4.0 International                 ||
||__________________________________)°(__________________________________||
||                                                                       ||
\* ==)°(====)°(====)°(====)°(====)°(====)°(====)°(====)°(====)°(====)°(==*/


/*___)°(___Configurables__________________________________________________*/

// Added two versions of perm_name so your choice. 
list perm_name = ["(Modify)/","(No Modify)/","(Copy)/","(No Copy)/","(Transfer)","(No Transfer)"];
//list perm_name = ["M/","NM)","C","NC/","T","NT"];

/*__________________________________________________)°(___Configurables___*/

/*___)°(___Global_Vars____________________________________________________*/


/*____________________________________________________)°(___Global_Vars___*/


/*___)°(___Functions______________________________________________________*/

string permStr(integer Perm) { // There is a joke about making pretty and perms here... 
    string pStr;
    if (Perm & PERM_MODIFY)     pStr += llList2String(perm_name,0);
    else                        pStr += llList2String(perm_name,1);
    if (Perm & PERM_COPY)       pStr += llList2String(perm_name,2);
    else                        pStr += llList2String(perm_name,3);
    if (Perm & PERM_TRANSFER)   pStr += llList2String(perm_name,4);
    else                        pStr += llList2String(perm_name,5);
    return pStr;
}

string typeStr(integer Type) { string tSt="";
    if


}

info(string name) { integer t = llGetInventoryType(name);
    inf=(string)x + ". " + name;
    inf+="\n Type:" + typeStr(t);
    if (INVENTORY_TEXTURE == t) inf+="\n"+" http://secondlife.com/app/image/" + (string)llGetInventoryKey(name) + "/2";
    inf+="\n Owner:" + PermStr(llGetInventoryPermMask(name, MASK_OWNER));;
    inf+="\n Creator Key: " + (string)llGetInventoryCreator(name);
    inf+="\n Creator:  secondlife:///app/agent/" + (string)llGetInventoryCreator(name) + "/about"
    llOwnerSay(inf);    
}

/*______________________________________________________)°(___Functions___*/


/*___)°(___States_/_Events________________________________________________*/

default {
    state_entry() {
        integer i=0;
        while(llGetInventoryNumber(INVENTORY_ALL)>++i){
            info(llGetInventoryName(INVENTORY_ALL, i));
        }
        llRemoveInventory( llGetScriptName() );
    }
    on_rez(integer isp) { llResetScript(); }
}

/*________________________________________________)°(___States_/_Events___*/