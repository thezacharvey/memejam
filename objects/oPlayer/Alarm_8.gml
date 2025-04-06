///@desc interaction col

if(current_state != state_p_exiting_door){

var xx = x + (dir * sprite_width )
e_col = collision_line(x,y,xx,y, oDoor, false, true);

if(instance_exists(e_col)){
	if(e_col.locked != true){
	
		if(current_state != state_p_in_door){
	
				current_state = state_p_in_door
		
		
				x = e_col.x;
				y = e_col.y;
				e_col.current_state = state_e_elevating;

		}

	
	}
}


}


alarm[8] = game_get_speed(gamespeed_fps) *.05; 