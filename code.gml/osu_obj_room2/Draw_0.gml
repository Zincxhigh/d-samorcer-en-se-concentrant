if (osu_active == true) {
var _center_x = 347 + ((983 - 347) / 2); // Result: 665
var _center_y = 209 + ((574 - 209) / 2); // Result: 391.5

// 2. Render the static target circle (The perfect hit zone)
draw_set_color(c_dkgray);
draw_circle(_center_x, _center_y, 45, true); 

// 3. Render the shrinking outer timing ring (Multiplied by your osu_ring_scale variable)
draw_set_color(c_red);
draw_circle(_center_x, _center_y, 45 * osu_ring_scale, true);

// 4. Render clean alignment instruction text inside the top of the canvas padding
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_text(_center_x, 229, "ALIGN THE RING!");
}