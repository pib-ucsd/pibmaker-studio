/// @description Insert description here
// You can write your code in this editor

key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
key_down = keyboard_check(vk_down) || keyboard_check(ord("S"));
key_jump = keyboard_check_pressed(vk_space) || keyboard_check(ord("W"));

move = key_right - key_left;

hsp = move * walksp;
var vsp_mult = 1;
if (key_down) {
	vsp_mult = dwnMult;
	squish = true;
}
else {
	squish = false;
}
vsp += vsp_mult * ((vsp > 0) ? fgrv : grv);

if (place_meeting(x, y + 1, obj_Wall)) && (key_jump) {
	vsp = jsp;
}

// Horiz
if (place_meeting(x + hsp, y-1, obj_Wall)) {
	while(!place_meeting(x + sign(hsp), y, obj_Wall)) {
		x += sign(hsp);
	}
	hsp = 0;
}
x += hsp;

// Vertical;
if (place_meeting(x, y + vsp, obj_Wall)) {
	while(!place_meeting(x, y + sign(vsp), obj_Wall)) {
		y += sign(vsp);
	}
	vsp = 0;
}
y += vsp;