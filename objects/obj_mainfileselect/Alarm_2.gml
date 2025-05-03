global.SaveFileName = savePath[selectedFile]
global.NewFile = !filePresent[selectedFile]
global.UseOfftopic = false
scr_saveinit()
if (global.GLOBAL_FUN <= 22)
obj_parent_player.targetRoom = hub_demohallway
else
obj_parent_player.targetRoom = hub_hallway
obj_parent_player.targetDoor = "A"
obj_parent_player.state = PlayerState.door

if (!instance_exists(obj_fadeoutTransition))
{
	instance_create(x, y, obj_fadeoutTransition, 
	{
		levelStart: true
	})
}

scr_get_palettes()
