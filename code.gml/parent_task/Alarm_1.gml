var _white_left   = 347;   
var _white_top    = 209;   
var _white_right  = 983;  
var _white_bottom = 574;  

var _padding = 16; 

var _x = irandom_range(_white_left + _padding, _white_right - _padding);
var _y = irandom_range(_white_top + _padding, _white_bottom - _padding);

current_key = irandom_range(1, 4);

switch(current_key) 
{
    case 1: instance_create_layer(_x, _y, "Instances_1", up_key_obj);    break;
    case 2: instance_create_layer(_x, _y, "Instances_1", left_key_obj);  break;
    case 3: instance_create_layer(_x, _y, "Instances_1", down_key_obj);  break;
    case 4: instance_create_layer(_x, _y, "Instances_1", right_key_obj); break;
}
