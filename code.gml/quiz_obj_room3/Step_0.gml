
if (quiz_is_active == true) {
if (waiting_for_a_response == true && is_fading == false) {
    quiz_timer -= 1;
    if (quiz_timer <= 0) {
        waiting_for_a_response = false;
        is_fading = true; // Trigger fade-out on time out
    }
}

if (is_fading == true) {
    fade_alpha -= 0.04; // Slightly faster fade for snappier feedback
    
    if (fade_alpha <= 0) {
        fade_alpha = 0;
        is_fading = false;
        time_subtract(2); // Time out 
        
        // Skip to the next question 
        current_question_index += 1;
        input_text = "";
        
        if (current_question_index < array_length(questions)) {
            question_text = questions[current_question_index];
            answer        = answers[current_question_index];
            quiz_timer    = game_get_speed(gamespeed_fps) * 10; // Reset clock
            fade_alpha    = 1.0;                                // Reset visibility
            waiting_for_a_response = true;                      // Open input again
        } else {
            // OUT OF QUESTIONS: Trigger game complete state instead of changing rooms
            question_text = "Quiz Completed!";
            answer = "FINISHED"; 
        }
    }
}

// 3. TYPING & INPUT LOGIC
if (waiting_for_a_response == true && is_fading == false) {
    if (keyboard_string != "") {
        input_text += keyboard_string;
        keyboard_string = ""; 
    }

    if (keyboard_check_pressed(vk_backspace)) {
        input_text = string_delete(input_text, string_length(input_text), 1);
    }

    if (keyboard_check_pressed(vk_enter)) {
        if (string_lower(input_text) == string_lower(answer)) {
            // --- CORRECT ANSWER FLOW ---
            time_add(30);
            input_text = ""; 
            current_question_index += 1;
            
            if (current_question_index < array_length(questions)) {
                question_text = questions[current_question_index];
                answer        = answers[current_question_index];
                quiz_timer    = game_get_speed(gamespeed_fps) * 10; // Reset timer for next question
            } else {
                question_text = "Quiz Completed!";
                answer = "FINISHED";
            }
        } else {
            // --- WRONG ANSWER FLOW ---
            time_subtract(16);
            input_text = "";
        }
    }
}
}
