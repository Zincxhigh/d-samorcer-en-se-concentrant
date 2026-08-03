if (room1 > 0) {
	room1 -= 1;
}
if (instance_exists(quiz_obj_room3)) {
    
    if (quiz_obj_room3.current_question_index >= array_length(quiz_obj_room3.questions) && osu_active == false) {
        
        
        quiz_obj_room3.waiting_for_a_response = false;
        quiz_obj_room3.quiz_is_active = false;
        
        
        osu_active = true; 
    }
}


alarm[0] = 100;