
scr_getinputs();

//normal movement


hsp = spd * (rkey - lkey);

vsp = spd * (dkey - ukey);



//jump
if(keyboard_check_pressed(vk_space) and (availableJumps > 0))
{   
    
    grav = 1;
    zsp = -jump;
    
    

}
//attack
if(pakey)
{

image_index = 0;
state = states.attack;

}




/*
scr_collideandmove();
*/

scr_collide();
scr_movement();



