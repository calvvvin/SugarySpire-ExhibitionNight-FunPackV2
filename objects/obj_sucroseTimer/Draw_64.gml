var timeinsecs, mins, secs, display_mins, display_secs, gaining_time;

gaining_time = target_fill > timer;
timeinsecs = floor(timer / 60);
mins = max(floor(timeinsecs / 60), 0);
secs = max(timeinsecs % 60, 0);
display_mins = string(abs(mins));
display_secs = string(abs(secs));

if (secs < 10)
    display_secs = "0" + display_secs;

draw_set_font(global.timerfont);

draw_sprite_ext(sprite_index, ((sprite_index != spr_timer_timesup) ? secs % 2 : image_index), 475, timer_y, 1, 1, 0, c_white, 1);

if (mins < 10)
	display_mins = "0" + display_mins;

if (sprite_index != spr_timer_timesup)
{
	draw_set_color(gaining_time ? #60D048 : #F80000);
	draw_text_scribble(415, timer_y, display_mins);
	draw_text_scribble(495, timer_y, display_secs);
	draw_set_color(c_white);
}
