//parent
event_inherited();

//z jump (when space pressed)
if(zJump == true)
{
    z += zspd
}

//if not ontop block
if(!instance_place(x,y,o_block_par))
{
    zfloor = 0; //floor is ground level
}
//if not on ground
if(!z <= zfloor) 
{
    z -= zgrav; //applies downward force
    zgrav += 0.2; //force gets stronger
}

if(z <= zfloor+1) //snap z pos to ground
{
    z = zfloor;
    zgrav = 0;
    zjump = false;

}

