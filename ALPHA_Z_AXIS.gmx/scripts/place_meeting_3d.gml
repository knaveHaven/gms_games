//checks for 3d collisions

var _x = argument[0];
var _y = argument[1]; 
var _z = argument[2];
var _obj = argument[3];


var _height = height;

var xymeeting = instance_place(_x,_y,_obj); //is the player overlapping the obj?

var zmeeting = false; //it is not coliding depth-wise by default

if(xymeeting) //if the objects are overlapping, check the z value
{

zmeeting = rectangle_in_rectangle(0,xymeeting.z,1,xymeeting.z - xymeeting.height,
0,_z,1,_z - height); 


}

return xymeeting && zmeeting;
