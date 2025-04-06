

#macro state_p_idle 0
#macro state_p_jump 1
#macro state_p_attack 2
#macro state_p_dead 3
#macro state_p_in_door 4
#macro state_p_exiting_door 5


current_state = state_p_idle;
isGrounded = true;


e_col = noone;


dir = image_xscale;
grav = .5
vsp = 0;
hsp = 0;

mve_spd = 30;
jump_height = -30;

left_key = ord("A")
right_key = ord("D")
jump_key = vk_space;

alarm[9] = 1;
alarm[8] = 1;


function platform_direction_check()
{
	if(keyboard_check_pressed(left_key)){
		dir = -1;
	} else if (keyboard_check_pressed(right_key)){
		dir = 1; 
	}
}

function platform_moving()
{
	var e  = (keyboard_check(right_key) - keyboard_check(left_key))* mve_spd;
	var _limiter = 30;
	hsp = e != 0 ? e : (hsp + .5 * sign(hsp) * -1);
	hsp = hsp > _limiter ? _limiter : hsp;
	hsp = hsp < -_limiter ? -_limiter : hsp;
}

function platform_jumping(){
	
	if(isGrounded){	
		vsp += keyboard_check_pressed(vk_space) * jump_height;
		current_state = state_p_jump;
	}
	
}

function platform_collision_check(){
		if(place_meeting(x,y+vsp,oGround)){
		vsp = 0;
		while(place_meeting(x,y+1,oGround)){
		
			y -= .01
		}
	}

	if(place_meeting(x + hsp,y,oGround)){
		hsp = 0;
		while(place_meeting(x + sign(hsp),y,oGround)){
		
			x += .01 * (sign(hsp) * -1)
		}
	
	}

}


function move_doors(door){
	e_col = door;	
	y = e_col.y;
	x = e_col.x + e_col.sprite_width * 2;
	//e_col = noone;
	current_state = state_p_exiting_door;
	
}

