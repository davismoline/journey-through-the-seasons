function horizontal_collision(object){
	if(place_meeting(x + hsp, y, object)){
		while(!place_meeting(x + sign(hsp), y, object)){
			x += sign(hsp)
		}
		hsp = 0;
	}
}

function vertical_collision(object){
	if(place_meeting(x, y + vsp, object)){
		while(!place_meeting(x, y + sign(vsp), object)){
			y += sign(vsp)
		}
		vsp = 0;
	}	
}