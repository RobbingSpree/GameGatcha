/// @description Insert description here
// You can write your code in this editor
draw_text(x+100,80,x);
draw_text(x+100,100,view_get_xport(0));

var lay_id = layer_get_id("Background");
var back_id = layer_background_get_id(lay_id);

if(menu==m.gatcha){
    draw_text(10,10,"Gatcha Machine");
}else if menu== m.layouts{
    draw_text(10,10,"Layouts view");
}else{
	draw_text(10,10,"Stats Block");
}
layer_background_blend(back_id, merge_color(m_col[last_menu], m_col[menu_destination], abs(menu-menu_destination)));

