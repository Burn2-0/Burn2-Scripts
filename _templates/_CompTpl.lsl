/* ==)°(====)°(====)°(====)°(====)°(====)°(====)°(====)°(====)°(====)°(==*\ 
/* */    string pit="https://github.com/Burn2-0/Burn2-Scripts/";      /* */
/* */            string fuel="blob/main/_templates.lsl/";             /* */
/*__________________________________)°(__________________________________*\
||                         (                   )                         ||
||                       ( )\   (  (        ( /(                         ||
||                       )((_) ))\ )(   (   )(_))                        ||
||                      ((_)_ /((_(()\  )\ ((_)                          ||
||                       | _ (_))( ((_)_(_/|_  )                         ||
||                       | _ | || | '_| ' \)/ /                          ||
||                       |___/\_,_|_| |_||_/___(                         ||
||__________________________________)°(__________________________________||
||  Project:     B2TT Base Template                                      ||
||__________________________________)°(__________________________________||
||  Author:      Talia Tokugawa */string Script="B2TT_BaseTemplate.lsl"/*||
||__________________________________)°(__________________________________||
||  Date:        2024-01-26        Version:     0.0                      ||
||__________________________________)°(__________________________________||
||  Description: Just a template with some basic layouts.                ||
||                  Most importantly it has the CC in it!                ||
||__________________________________)°(__________________________________||
||  Instructions:                                                        ||
||       * Do something.                                                 ||
||       * Do the other thing.                                           ||
||       * Hope it don't explode....                                     ||
||       * Forget about the thing and go sort it.                        ||
||       * Hope it don't explode....                                     ||
||__________________________________)°(__________________________________||
||  Licence: B2TT-BaseTemplate © 2024 by Talia Tokugawa                  ||
||           is licensed under                                           ||
||           Attribution-NonCommercial 4.0 International                 ||
|| ==)°(====)°(====)°(====)°(====)°(====)°(====)°(====)°(====)°(====)°(==||
||                                                                       ||
\*___)°(___Configurables_________________________________________________*/

// Section for user definable variables.

/*__________________________________________________)°(___Configurables__*\
||                                                                       ||
\*___)°(___Global_Vars___________________________________________________*/



/*____________________________________________________)°(___Global_Vars__*\
||                                                                       ||
\*___)°(___Functions_____________________________________________________*/



/*______________________________________________________)°(___Functions__*\
||                                                                       ||
\*___)°(___States_/_Events_______________________________________________*/

default { 
    state_entry() { 
        llWhisper(0, ")'( ["+pit+fuel+Script+" Leave-No-Trace!] )'("); 
    } 
}   


/*  Including all the events with my usual schema for them.    
// A
    attach(key kid) {}
    not_at_rot_target() { }
    at_target(integer itn, vector vtp, vector vop)() { }
// C
    changed(integer icp) { }
    collision(integer inu) { }
    collision_end(integer inu) { }
    collision_start(integer inu) { }
    control(key kid, integer ilv, integer ied) { }
// D
    dataserver(key kid, string sdt) { }
// E
    email(string sti, string sad, string ssb, string sme, integer inl) { }    
    experience_permissions(key kid) { }
    experience_permissions_denied(key kid, integer ire) { }
// H
    http_request(key kri, string smt, string sbo) { }
    http_response(key kri, integer ist, list lmd, string sbo) { }
// L
    land_collision(vector vpo) { }
    land_collision_end(vector vpo) { }
    land_collision_start(vector vpo) { }
    linkset_data(integer iac, string sna, string sva) { }
    link_message(integer isn, integer inu, string sme, key kid) { }
    listen(integer ich, string sna, key kid, string sme) { }
// M
    money(key kid, integer iva) { }
    moving_end() { }
    moving_start() { }
// N
    not_at_rot_target() { }
    not_at_target() { }
    no_sensor() { }
// O
    object_rez(key id) { }
    final_damage() { }
    on_damage() { }
    on_death() { }
    on_rez(integer irp) { }
// P
    path_update(integer itp, list lrs) { }
// R
    remote_data(integer iet, key kch, key kmi, string ssn, integer idt, string sdt) { }
    run_time_permissions(integer irp) { }
// S
    sensor(integer isp) { }
    state_entry() { }
    state_exit() { }
// T
    timer() { }
    touch(integer itp) { }
    touch_end(integer itp) { }
    touch_start(integer itp) { }
    transaction_result(key kid, integer ist, string sdt) { }


}

/*________________________________________________)°(___States_/_Events__*\
||           Thank you, Hope you find this useful, and Burn on!          ||
\*__________________________________)°(__________________________________*/
