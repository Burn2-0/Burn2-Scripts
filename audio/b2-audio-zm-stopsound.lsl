/* 
  This script stops sounds playing from the object it's put in. That's all it does ~ZM
*/
default
{
    state_entry()
    {
        llSay(0, "Stopping sounds");
        llStopSound( );
        llRemoveInventory(llGetScriptName());
    }
}
