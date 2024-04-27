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
||  Project:     B2TT Base Template                                      ||
||__________________________________)°(__________________________________||
||                                                                       ||
||  Script:      B2TT_BaseTemplate.lsl                                   ||
||__________________________________)°(__________________________________||
||                                                                       ||
||  Author:      Talia Tokugawa                                          ||
||__________________________________)°(__________________________________||
||                                                                       ||
||  Date:        2024-01-26                                              ||
||__________________________________)°(__________________________________||
||                                                                       ||
||  Version:     0.0                                                     ||
||__________________________________)°(__________________________________||
||                                                                       ||
||  Description: Just a template with some basic layouts.                ||
||                  Most importantly it has the CC in it!                ||
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
||  Licence: B2TT-BaseTemplate © 2024 by Talia Tokugawa                  ||
||           is licensed under                                           ||
||           Attribution-NonCommercial 4.0 International                 ||
||__________________________________)°(__________________________________||
||                                                                       ||
\* ==)°(====)°(====)°(====)°(====)°(====)°(====)°(====)°(====)°(====)°(==*/

/*___)°(___FS_PrePro_Includes_____________________________________________*/
/*_____________________________________________)°(___FS_PrePro_Includes___*/
/*___)°(___FS_PrePro_Configs______________________________________________*/
/*______________________________________________)°(___FS_PrePro_Configs___*/
/*___)°(___Configurables__________________________________________________*/
// Section for user definable variables.
/*__________________________________________________)°(___Configurables___*/
/*___)°(___FS_PrePro_Constants____________________________________________*/
/*____________________________________________)°(___FS_PrePro_Constants___*/
/*___)°(___Global_Vars____________________________________________________*/
/*____________________________________________________)°(___Global_Vars___*/
/*___)°(___FS_PrePro_Functions____________________________________________*/
/*____________________________________________)°(___FS_PrePro_Functions___*/
/*___)°(___Functions______________________________________________________*/
/*______________________________________________________)°(___Functions___*/
/*___)°(___States_/_Events________________________________________________*/
default { 
    state_entry() { } 
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

/*________________________________________________)°(___States_/_Events___*/