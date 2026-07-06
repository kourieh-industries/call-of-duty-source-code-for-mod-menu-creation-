//this is the main structre to use with the exact name of _clientids.gsc which is where the menu would be , and the file you actually paste into your game files.
init()
{
    level.clientid = 0;
    level thread onplayerconnect();
}

onplayerconnect()
{
    for (;;)
    {
        level waittill( "connecting", player );
        player.clientid = level.clientid;
        level.clientid++;
    }
}
