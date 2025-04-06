


if(current_state == state_p_in_door){


	x = e_col.x;
	y = e_col.y;
	hsp = 0;
	vsp = 0
	return;

}

if(current_state == state_p_exiting_door){
	if(place_meeting(x,y,oDoor)){
		while(place_meeting(x,y,oDoor)){
			x +=   e_col.facing_dir
		}
		var margin = sprite_width;
		x += margin * e_col.facing_dir
		e_col = noone;
	}else{
		current_state = state_p_idle
	}
}




platform_direction_check();
platform_moving();
platform_collision_check();
platform_jumping();

vsp += grav





x += hsp;
y += vsp;

