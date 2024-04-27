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
||  Project:     B2TT Permission Gallery                                 ||
||__________________________________)°(__________________________________||
||                                                                       ||
||  Script:      B2TT_PermGallery.lsl                                    ||
||__________________________________)°(__________________________________||
||                                                                       ||
||  Author:      Talia Tokugawa                                          ||
||__________________________________)°(__________________________________||
||                                                                       ||
||  Date:        2024-01-26                                              ||
||__________________________________)°(__________________________________||
||                                                                       ||
||  Version:     1.5                                                     ||
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
||           B2TT-LNT-Scripts © 2024 by Talia Tokugawa                   ||
||           is licensed under                                           ||
||           Attribution-NonCommercial 4.0 International                 ||
||                                                                       ||
\* ==)°(====)°(====)°(====)°(====)°(====)°(====)°(====)°(====)°(====)°(==*/

/*___)°(___Configurables__________________________________________________*/

// Added two versions of perm_name so your choice. 
list perm_name = ["(Modify)/","(No Modify)/","(Copy)/","(No Copy)/","(Transfer)","(No Transfer)"];
//list perm_name = ["M/","NM)","C","NC/","T","NT"];

/*__________________________________________________)°(___Configurables___*/

/*___)°(___Global_Vars____________________________________________________*/

string inf;
integer x=0; 
integer n;

/*____________________________________________________)°(___Global_Vars___*/


/*___)°(___Functions______________________________________________________*/

string PermStr(integer Perm) { // There is a joke about making pretty and perms here... 
    string pStr;
    if (Perm & PERM_MODIFY)     pStr += llList2String(perm_name,0);
    else                        pStr += llList2String(perm_name,1);
    if (Perm & PERM_COPY)       pStr += llList2String(perm_name,2);
    else                        pStr += llList2String(perm_name,3);
    if (Perm & PERM_TRANSFER)   pStr += llList2String(perm_name,4);
    else                        pStr += llList2String(perm_name,5);
    return pStr;
}

info(string name) {
    inf=(string)x + ". " + name + "\n";
    inf+="http://secondlife.com/app/image/" + (string)llGetInventoryKey(name) + "/2";
    inf+="\n Owner:" + PermStr(llGetInventoryPermMask(name, MASK_OWNER));;
    inf+="\n Creator Key: " + (string)llGetInventoryCreator(name);
    //llRequestAgentData(llGetInventoryCreator(name),DATA_NAME);    
    inf+="\n Creator:  secondlife:///app/agent/" + (string)llGetInventoryCreator(name) + "/about"
    llOwnerSay(inf);    
}

/*______________________________________________________)°(___Functions___*/


/*___)°(___States_/_Events________________________________________________*/

default {
    state_entry()     {        
        n=llGetInventoryNumber(INVENTORY_TEXTURE);
        x=0;
        llSetTexture(llGetInventoryName(INVENTORY_TEXTURE, x), ALL_SIDES);
        info(llGetInventoryName(INVENTORY_TEXTURE, x));
    }
    
    touch_start(integer itp) {
        ++x; if (x==llGetInventoryNumber(INVENTORY_TEXTURE)) x=0;
        llSetTexture(llGetInventoryName(INVENTORY_TEXTURE, x), ALL_SIDES);
        info(llGetInventoryName(INVENTORY_TEXTURE, x));        
    }
    
    changed(integer icp) { if (icp & CHANGED_INVENTORY) llResetScript(); }
     on_rez(integer irp) { llResetScript(); }

    //dataserver(key kid, string sdt) {
    //    inf+="\n Creator: " + sdt;
    //    llOwnerSay(inf);
    //}
}

/*________________________________________________)°(___States_/_Events___*/