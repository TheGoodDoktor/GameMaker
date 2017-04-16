/// player_idle

var left_pressed = keyboard_check(vk_left);
var right_pressed = keyboard_check(vk_right);
var jump_pressed = keyboard_check(vk_space);

if(left_pressed || right_pressed)
    player_set_state("walk")
