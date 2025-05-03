global.collect = 0;
global.icepop = random_range(1,5)
if (instance_exists(obj_rudejanitor))
	instance_destroy(obj_rudejanitor);
global.lapcount = 0;
ds_list_clear(global.doorsave);
