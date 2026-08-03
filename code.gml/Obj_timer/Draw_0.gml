draw_set_color(c_green);
draw_set_font(Font1);
draw_set_halign(fa_right);
draw_set_valign(fa_top);

var t = string(t_min) + ":";

if (t_sec >= 10) {
    t += string(t_sec);
} else {
    t += "0" + string(t_sec);
}


draw_text(1270, 240, t);
var l = string("TIME");
draw_text(1270, 350, l);



