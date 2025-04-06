
target = instance_exists(oPlayer) ? oPlayer : noone;

view_enabled = true;
view_visible[0] = true;





camera_width = 1920;
camera_height = 1080;
camera_move_speed = .5

camera_info = noone;
camera = noone;
zoom = 1


function cam_setup(){
	
	camera_info = scr_camera_init(camera_width,camera_height,2)
	camera = camera_info.cam
	zoom = camera_info.zoom
	
}

















	
	