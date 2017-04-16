///move(collision_object)
var collision_object = argument0;

// Apply velocity
// --------------

// Apply Horizontal Velocity
if(place_meeting(x+x_vel,y,collision_object))  // step will produce collision
{
    while(!place_meeting(x+sign(x_vel),y,collision_object))
        x+=sign(x_vel);
        
    x_vel = 0;
}
else
{
    x+=x_vel;
}

// Apply Vertical Velocity
if(place_meeting(x,y+y_vel,collision_object))  // step will produce collision
{
    while(!place_meeting(x,y+sign(y_vel),collision_object))
        y+=sign(y_vel);

    // have we landed?
    if(y_vel > 0 && on_ground == false)
    {
        y_vel = 0;
        on_ground = true;
    }
    
    y_vel = 0;
}
else
{
    y+=y_vel;
}

