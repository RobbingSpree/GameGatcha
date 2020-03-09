
var table = [];

switch argument0
{
	case item.dev: table = fill_dev_table(); break;
	case item.idea: table = fill_idea_table(); break;
	case item.layout: table = fill_layout_table(); break;
	case item.mech: table = fill_mech_table(); break;
	case item.crunch: table = fill_crunch_table(); break;
	case item.inspiration: table = fill_inspiration_table(); break;
	case item.philosophy: table = fill_phlosophy_table(); break;
	
}

return table;