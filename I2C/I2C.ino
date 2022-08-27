#include <Wire.h>
#include <Timer.h>
int address = 0x40;
void setup()
{
    Wire.begin();

}

void loop()
{

    for (address = 0x40; address < 0x4f; address++)
    {
        //Wire.beginTransmission(3);
        Wire.beginTransmission(address);
        Wire.write("HELLO");
        Wire.endTransmission();
        Delay_ms(3);
        //Delay_s(2);
    }
}
