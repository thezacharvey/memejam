

if(locked){
	image_blend = c_red;
	return;
}

if(current_state == state_e_elevating){
	
	vsp = -elv_spd;
	
	 if(place_meeting(x,y + vsp ,oDoor)){
		 vsp = 0;
		 var col = collision_line(x,y,x,y-sprite_height,oDoor,false,true)
		 oPlayer.move_doors(col)
		 while(place_meeting(x,y,oGround)){
			y += .01;
		 }
		 current_state = state_e_deelevating
		
	}	
}

if(current_state == state_e_deelevating){

	vsp =elv_spd;
	if(place_meeting(x,y + vsp ,oGround)){
	
	 vsp = 0;
	  current_state = state_e_idle
	}
}




y += vsp;