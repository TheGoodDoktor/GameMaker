/// player_jump_update
var jump_released = keyboard_check_released(vk_space);
var left_pressed = keyboard_check(vk_left);
var right_pressed = keyboard_check(vk_right);

// directional controls
if(left_pressed)
{
    if(x_vel > -max_x_vel)
        x_vel -= 1;
}
else if(right_pressed)
{
    if(x_vel < max_x_vel)
        x_vel += 1;
}
else
{
    if(x_vel !=0)
        x_vel -= sign(x_vel);
}

// gravity
y_vel += grav;
if(y_vel > terminal_vel)    // clamp to terminal velocity
    y_vel = terminal_vel;

// jump release
if(jump_released && !on_ground && y_vel < jump_release_vel) // if we are jumping up above the jump release velocity
{
    y_vel = jump_release_vel;
}

move(obj_solid)

if(on_ground == true)
    player_set_state("walk")
    
