targetRoom = entryway_1;
targetDoor = "A";
level = "entryway";

details = [
gate_createlayer(spr_entry_startgate, 0),
gate_createlayer(spr_entry_startgate, 1),
gate_createlayer(spr_entry_startgate, 2, 0.50),
gate_createlayer(spr_entry_startgate, 3, 0.35),
gate_createlayer(spr_entry_startgate, 4, 0.15),
gate_createlayer(spr_entry_startgate, 5, 0),
]

info =
{
	bginfo : [spr_entrycard_bg, cardtype.left, cardtype.linear, cardtype.none, 0, 0],
	titleinfo : [spr_entrycard_title, cardtype.up, cardtype.interp, cardtype.waving, 672, 160],
	song : mu_entryway_title
}
