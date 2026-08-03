if (room1 > 0) {
	room1 -= 1;
}

if (instance_exists(quiz_obj_room1)) {
    
    if (quiz_obj_room1.current_question_index >= array_length(quiz_obj_room1.questions) && osu_active == false) {
        
    
        quiz_obj_room1.waiting_for_a_response = false;
        quiz_obj_room1.quiz_is_active = false;
        
 
        osu_active = true; 
    }
}

alarm[0] = 100; 