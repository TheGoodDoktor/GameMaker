/// player_walk_update

var left_pressed = keyboard_check(vk_left);
var right_pressed = keyboard_check(vk_right);
var jump_pressed = keyboard_check(vk_space);
var jump_released = keyboard_check_released(vk_space);

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
    
// jump
if(jump_pressed && on_ground)
{
    player_set_state("jump");
}

// flip sprite
if(x_vel != 0)
{
    if(image_xscale != sign(x_vel))
    {
        image_xscale = sign(x_vel);
        
        while(place_meeting(x,y,obj_solid)) // sprite might get stuck in wall after flip - nudge it out
            x+=sign(x_vel);
    }
}

move(obj_solid);

if(on_ground == false)
    player_set_state("fall")
    

