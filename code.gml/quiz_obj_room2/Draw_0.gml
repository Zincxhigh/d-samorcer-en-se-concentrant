if (quiz_is_active == true) {

var _white_left   = 347;   
var _white_top    = 209;   
var _white_right  = 983;  
var _white_bottom = 574;

var padding = 20;                     
var line_height = 25;                 
var max_width = (_white_right - _white_left) - (padding * 2); 

var draw_x = _white_left + padding;
var draw_y = _white_top + padding;

draw_set_alpha(fade_alpha);
draw_set_color(c_maroon);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(Font2);

// Draw the dynamic question
draw_text_ext(draw_x, draw_y, question_text, line_height, max_width);

// Only show input lines if the quiz isn't totally completed
if (answer != "FINISHED") {
    draw_text_ext(draw_x, draw_y + 60, "Type your answer: " + input_text, line_height, max_width);
    
    if (waiting_for_a_response == true) {
        var seconds_left = ceil(quiz_timer / game_get_speed(gamespeed_fps));
        var timer_y = _white_bottom - padding - line_height;
        draw_text(draw_x, timer_y, "Time left: " + string(seconds_left) + "s");
    }
}

draw_set_alpha(1.0);
}