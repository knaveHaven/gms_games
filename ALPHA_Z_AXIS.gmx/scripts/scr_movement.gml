

x += hsp;

y += vsp;

z += zsp;


if( zsp == 0 and (hsp != 0 or vsp !=0)) //while player is on the ground and moving
{
    sprite_index = spr_player_moving; //draw player moving
    image_speed = 0.2;

}
else 
{
    sprite_index = spr_player_idle_64x64; //draw player idle
}

