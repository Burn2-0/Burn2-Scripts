/* ==)°(====)°(====)°(====)°(====)°(====)°(====)°(====)°(====)°(====)°(==*\ 
/* */    string pit="https://github.com/Burn2-0/Burn2-Scripts/";      /* */
/* */                string fuel="blob/main/BuildTools/";             /* */
/*__________________________________)°(__________________________________*\
||                         (                   )                         ||
||                       ( )\   (  (        ( /(                         ||
||                       )((_) ))\ )(   (   )(_))                        ||
||                      ((_)_ /((_(()\  )\ ((_)                          ||
||                       | _ (_))( ((_)_(_/|_  )                         ||
||                       | _ | || | '_| ' \)/ /                          ||
||                       |___/\_,_|_| |_||_/___(                         ||
||__________________________________)°(__________________________________||
||  Project:  B2TT-Build_Tools-Face_Checker                              ||
||__________________________________)°(__________________________________||
||  Author:   Talia Tokugawa     */string Script="B2TT_BT_FcChk.lsl";  /*||
||__________________________________)°(__________________________________||
||  Date:     2024-09-27             float Version:  1.0                 ||
||__________________________________)°(__________________________________||
||  Description: Script to help dealing with knowing which faces are     ||
||          Which in a link set. Re-colours the faces to make obvious    ||
||__________________________________)°(__________________________________||
||  Instructions:                                                        ||
||       * Drop script inside.                                           ||
||       * Hope it don't explode....                                     ||
||         + Click to get info about a face.                             ||
||         + Click again quickly to have it say that info.               ||
||         + Hold for a second to toggle the Colour mode.                ||
||         + Hold for 3, Script removes itself. (lnt)                    ||
||                                         * Hope it don't explode....   ||
||__________________________________)°(__________________________________||
||  Licence: B2TT_BT_FcChk.lsl © 2024 by Talia Tokugawa                  ||
||           is licensed under                                           ||
||           Attribution-NonCommercial 4.0 International                 ||
|| ==)°(====)°(====)°(====)°(====)°(====)°(====)°(====)°(====)°(====)°(==||
||                                                                       ||
/*___)°(___Global_Vars___________________________________________________*/

integer on=TRUE;
//                
list colours=[
    <1,0,0>     // red 
   ,<0,1,0>     // green
   ,<0,0,1>     // blue
   ,<1,1,0>     // yellow         
   ,<1,0,1>     // magenta
   ,<0,1,1>     // cyan
   ,<1,0.5,0>   // orange   
   ,<0,1,0.5>   // light green
   ,<0.5,0,1>]; // purple
list originals=[];
integer show = FALSE; // 0 (false) = 0riginals, 1 (true) = co1ours
integer dbl = FALSE;
integer mxfa = 10;
/*____________________________________________________)°(___Global_Vars__*\
||                                                                       ||
\*___)°(___Functions_____________________________________________________*/

getOriginals() { integer n = llGetNumberOfPrims() + 1;
  while (--n>0) { integer f=mxfa;
    while (--f>=0) { integer i = ((n-1)*mxfa)+f;
        originals = [llList2Vector(llGetLinkPrimitiveParams(n, [PRIM_COLOR,f]),0)] + originals;
        //llOwnerSay((string)i + ":" + (string)llList2List(originals, 0,0));
    }
}}

setOriginals() { integer n = llGetNumberOfPrims() + 1; integer c=0;
  while (--n>0) { integer f=mxfa;
    while (--f>=0) { integer i = ((n-1)*mxfa)+f;
      float a = llList2Float(llGetLinkPrimitiveParams(n, [PRIM_COLOR,f]),1);
      llSetLinkPrimitiveParamsFast(n, [PRIM_COLOR,f,llList2Vector(originals,i),a]);
      
    }} show = FALSE;llOwnerSay("SetOriginal");
}


setColours() { integer n = llGetNumberOfPrims() + 1;
  while (--n>0) { integer f=mxfa;
    while (--f>=0) {
        float a = llList2Float(llGetLinkPrimitiveParams(n, [PRIM_COLOR,f]),1);
        llSetLinkPrimitiveParamsFast(n, [PRIM_COLOR,f,llList2Vector(colours, f),a]);
    }} show = TRUE; llOwnerSay("SetColours");
}

/*______________________________________________________)°(___Functions__*\
||                                                                       ||
\*___)°(___States_/_Events_______________________________________________*/

default {
  state_entry(){ getOriginals(); }
  touch_start(integer itp){ if (llGetTime()<1) dbl=TRUE; llResetTime(); }
  touch(integer itp) {
      if (dbl) llSetText("dbl", <0,1,0>,1.);
      else if (llGetTime()>3) llSetText("LNT", <1,0,0>,1.);
      else if (llGetTime()>1) llSetText("Toggle\n"+(string)llGetTime(), <1,0.5,0>,1);
      else llSetText(".\n"+(string)llGetTime(), <0,0.5,0>,1);
    }
  touch_end(integer itp){
      if (dbl) {dbl = FALSE; 
        integer ln=llDetectedLinkNumber(0); integer fa=llDetectedTouchFace(0);
        list temp = llGetLinkPrimitiveParams(ln, [PRIM_COLOR, fa]);
        llOwnerSay("LN:"+(string)ln+" FA:"+(string)fa+" "
                         +(string)llList2Vector(temp,0));
        llSetText("LN:"+(string)ln+" FA:"+(string)fa
                  +"\n"+(string)llList2Vector(temp,0),
                 llList2Vector(temp,0), llList2Float(temp,1));
      } else if (llGetTime()>3&&llDetectedKey(0)==llGetOwner()) { 
        llWhisper(0, ")'( ["+pit+fuel+Script+" Leave-No-Trace!] )'(");
        llSetText("",<0,0,0>, 0.0); setOriginals(); 
        llSleep(2); llRemoveInventory(llGetScriptName());
      } else if  (llGetTime()>1&&llDetectedKey(0)==llGetOwner()) { 
        llSetText("",<0,0,0>, 0.0); 
        if (show) setOriginals(); else setColours();
      } else { integer ln=llDetectedLinkNumber(0); integer fa=llDetectedTouchFace(0);
        list temp = llGetLinkPrimitiveParams(ln, [PRIM_COLOR, fa]);
        llSetText("LN:"+(string)ln+" FA:"+(string)fa+"\n"
                 +(string)llList2Vector(temp,0), 
              llList2Vector(temp,0), llList2Float(temp,1));
      }
  }
  on_rez(integer irp){ llResetScript(); }
  //change(integer icp){ if (icp&CHANGED_COLOR
}

/*________________________________________________)°(___States_/_Events__*\
||           Thank you, Hope you find this useful, and Burn on!          ||
\*__________________________________)°(__________________________________*/
