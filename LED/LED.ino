
#include"Timer.h"
void setup()
{
    pinMode(13, OUTPUT);
}

void loop()
{
    digitalWrite(13, HIGH);
    Delay_s(3);
    //delay(1000);
    digitalWrite(13, LOW);
    delay(1000);
}
