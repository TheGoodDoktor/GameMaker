/// player_set_state()

var new_state = argument0

if(new_state == "idle")
{
    state_update_func = player_idle_update;
}
else if(new_state == "walk")
{
    state_update_func = player_walk_update;
}
else if(new_state == "jump")
{
    y_vel = jump_vel;
    on_ground = false;
    state_update_func = player_jump_update;
}
else if(new_state == "fall")
{
    state_update_func = player_jump_update; // TODO: use fall update function
}
