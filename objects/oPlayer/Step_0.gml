


if(current_state == state_p_in_door){


	x = e_col.x;
	y = e_col.y;
	hsp = 0;
	vsp = 0
	return;

}

if(current_state == state_p_exiting_door){
	e_col.locked = true;
	x = e_col.x;
	y = e_col.y;
	e_col = noone;
	current_state = state_p_idle
	
}




platform_direction_check();
platform_moving();
platform_collision_check();
platform_jumping();

vsp += grav





x += hsp;
y += vsp;

