/*
if(zsp < 10)//the threshold for the max jump height is 10, then gravity is applied
{

zsp += grav; //gravity is applied
 
}

*/

if(place_meeting_3d(x+hsp, y,z, obj_box)) //stops player from moving horizontally when colliding with box
{

hsp = 0;

}

if(place_meeting_3d(x, y+vsp, z, obj_box )) //stops player from moving vertically when colliding with box
{

vsp = 0;

}

if(place_meeting_3d(x, y, z+zsp, obj_box )) //stops player from moving depthically when colliding with box
{

zsp = 0;
grav = 1; //resets gravity
//floorZ = z; //maybe delete this lol

}


//Z floor
if(z + zsp > floorZ ) //if the player's current Z position combined with thegravity is below the floor
{

zsp = 0; //stops the player from falling by zeroing out the zpd being applied
z = floorZ; //makes the player's z the floorZ
grav = 1; //resets gravity

}

