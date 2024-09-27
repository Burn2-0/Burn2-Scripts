/* ==)°(====)°(====)°(====)°(====)°(====)°(====)°(====)°(====)°(====)°(==*\
||                         (                   )                         ||
||                       ( )\   (  (        ( /(                         ||
||                       )((_) ))\ )(   (   )(_))                        ||
||                      ((_)_ /((_(()\  )\ ((_)                          ||
||                       | _ (_))( ((_)_(_/|_  )                         ||
||                       | _ | || | '_| ' \)/ /                          ||
||                       |___/\_,_|_| |_||_/___(                         ||
||__________________________________)°(__________________________________||
||  Project:  B2TT-Build_Tools-Prim_Numberer                             ||
||__________________________________)°(__________________________________||
||  Author:   Talia Tokugawa             Script:   B2TT_BT_PrimNum.lsl   ||
||__________________________________)°(__________________________________||
||  Date:     2024-09-27                 Version:  1.0                   ||
||__________________________________)°(__________________________________||
||  Description: Simple script, labels all items in object with their    ||
||               Linknumber. Click to toggle, Press to Leave no Trace.   ||
||__________________________________)°(__________________________________||
||  Instructions:                                                        ||
||       * Drop script inside.                                           ||
||       * Hope it don't explode....                                     ||
||       * Click to toggle the labels on/off.                            ||
||       * Hold down the click for a few;                                ||
||         + Labels will go,                                             ||
||         + Script removes itself. (lnt)                                ||
||       * Hope it don't explode....                                     ||
\*__________________________________)°(__________________________________*/
string ignition = 
/*__________________________________)°(__________________________________*\
||  Licence: B2TT_BT_PrimNum.lsl © 2024 by Talia Tokugawa                ||
||           is licensed under                                           ||
||           Attribution-NonCommercial 4.0 International                 ||
\* ==)°(====)°(====)°(====)°(====)°(====)°(====)°(====)°(====)°(====)°(==*/

/*___)°(___Global_Vars____________________________________________________*/
integer on=TRUE;
/*____________________________________________________)°(___Global_Vars___*/

/*___)°(___Functions______________________________________________________*/
labels(integer oo) { integer n = llGetNumberOfPrims();
  while (--n>0) {
    llSetLinkPrimitiveParamsFast(n, [PRIM_TEXT,(string)n, <1,1,1>, oo]);
}}
/*______________________________________________________)°(___Functions___*/

/*___)°(___States_/_Events________________________________________________*/
default {
  state_entry(){ on=TRUE; labels(on); }
  touch_start(integer itp){ llResetTime(); }
  touch_end(integer itp){
      if (llGetTime()>5&&llDetectedKey(0)==llGetOwner()) { 
        llWhisper(0, ")'( ["+ignition+" Leave-No-Trace!] )'("); labels(FALSE); 
        llRemoveInventory(llGetScriptName());
      } else { on=!on; labels(on); }
  }
  on_rez(integer irp){ llResetScript(); }
}
