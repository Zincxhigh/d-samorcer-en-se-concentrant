input_text = "";
waiting_for_a_response = true;

// 1. Define all your questions and answers here
questions[0] = "What is kind of celestial body is the sun?";
answers[0]   = "star";

questions[1] = "What is the name of the frist man who stepped on the earth?";
answers[1]   = "adam";

// 2. Index tracking variables
current_question_index = 0;
question_text = questions[current_question_index];
answer        = answers[current_question_index];

// 3. Timer and Transparency systems
quiz_timer = game_get_speed(gamespeed_fps) * 10; 
is_fading = false;
fade_alpha = 1.0; 
room2 = 80;
quiz_is_active = false; 
alarm[0] = 90;
