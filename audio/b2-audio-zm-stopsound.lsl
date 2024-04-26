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
||==================================)°(==================================||
||       Zoren's Sound Killer Oneshot                                    ||
||    This script stops sounds playing from the object it's put in.      ||
||                             That's all it does ~ZM                    ||
||==================================)°(==================================||
||   Instructions:                                                       ||
||       * Usually a good idea to store all your oneshots in the same    ||
||         folder in your inventory.                                     ||
||       * Drop this into the prim that is playing the sound.            ||
||         (As Zorn said, "That's all... ")                              ||
||==================================)°(==================================||
||       Zoren's Sound Killer OneShot                                    ||
||    © 2024 by Zoren Manray is licensed under Creative Commons          ||
||                  Attribution-NonCommercial 4.0 International          ||
||                                                                       ||
\* ==)°(====)°(====)°(====)°(====)°(====)°(====)°(====)°(====)°(====)°(==*/

default
{
    state_entry()
    {
        llSay(0, "Stopping sounds");
        llStopSound( );
        llRemoveInventory(llGetScriptName());
    }
}
