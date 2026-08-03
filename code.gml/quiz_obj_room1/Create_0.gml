input_text = "";
waiting_for_a_response = true;

// 1. Define all your questions and answers here
questions[0] = "What fruit keeps the docter awway?";
answers[0]   = "apple";

questions[1] = "What is the opposite of imagination?";
answers[1]   = "dulusion";

questions[2] = "What color do you get when mixing blue and yellow?";
answers[2]   = "green";

questions[3] = "What is the name of the first ever adventure time epsiode?";
answers[3]   = "slumber party panic";

questions[4] = "what was ibn sina famous for?";
answers[4]   = "medicine";

// 2. Index tracking variables
current_question_index = 0;
question_text = questions[current_question_index];
answer        = answers[current_question_index];

// 3. Timer and Transparency systems
quiz_timer = game_get_speed(gamespeed_fps) * 10; 
is_fading = false;
fade_alpha = 1.0; 
room1 = 80;
quiz_is_active = false; 
alarm[0] = 90;
