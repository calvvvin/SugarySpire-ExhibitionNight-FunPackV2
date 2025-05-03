canCollide = function(argument0 = obj_parent_player)
{
    switch (argument0)
    {
        default:
            return global.dancetimer > 0 && !(place_meeting(x,y,obj_parent_player) && obj_parent_player.state != States.climbwall)
            break;
    }
};