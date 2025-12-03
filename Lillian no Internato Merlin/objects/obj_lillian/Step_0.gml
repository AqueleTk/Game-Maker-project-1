#region Movimentação e colisão

var moveh = keyboard_check(ord("D")) - keyboard_check(ord("A"))
var movev = keyboard_check(ord("S")) - keyboard_check(ord("W"))
hspd = moveh * spd
vspd = movev * spd

if(place_meeting(x+hspd,y,obj_colisao)){
	while(!place_meeting(x+sign(hspd),y,obj_colisao)){
		x+=sign(hspd)
	}
	hspd = 0
}

x+= hspd

if(place_meeting(x,y+vspd,obj_colisao)){
	while(!place_meeting(x,y+sign(vspd),obj_colisao)){
		y+=sign(vspd)
	}
	vspd = 0
}

y+= vspd

#endregion
