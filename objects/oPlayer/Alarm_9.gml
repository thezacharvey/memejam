/// @description grounded check

var col = collision_line(x,y,x,y + sprite_height / 2, oGround, false, true);

//sets grounded
isGrounded = instance_exists(col);



alarm[9] = game_get_speed(gamespeed_fps) *.05; 