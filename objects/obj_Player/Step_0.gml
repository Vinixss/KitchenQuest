/// @description Insert description here
// You can write your code in this editor
var left = keyboard_check(vk_left) || keyboard_check(ord("A"));
var right = keyboard_check(vk_right) || keyboard_check(ord("D"));
var up = keyboard_check(vk_up) || keyboard_check(ord("W"));
var down = keyboard_check(vk_down) || keyboard_check(ord("S"));

var menu = keyboard_check_pressed(vk_enter);
var confirm = keyboard_check_pressed(vk_space);
var cancel = keyboard_check_pressed(vk_backspace);

var h_speed = right - left;
var v_speed = down - up;

if (h_speed != 0 || v_speed != 0)
{
	var spd = 4;
	var dir = point_direction(0, 0, h_speed, v_speed);
	var x_add = lengthdir_x(spd, dir);
	var y_add = lengthdir_y(spd, dir);
	x += x_add;
	y += y_add;
}