
time_limit = time_limit - 1;

if (time_limit > 0 && room == Room1) 
{
    if (current_key == 0 && alarm[1] <= 0) 
    {
        alarm[1] = 200; 
    }
}

if(time_limit > 0 && room == Room2)
{
    if (current_key == 0 && alarm[1] <= 0) 
    {
        alarm[1] = 100;
    }
}

if(time_limit > 0 && room == Room3)
{
    if (current_key == 0 && alarm[1] <= 0) 
    {
        alarm[1] = 50; 
    }
}