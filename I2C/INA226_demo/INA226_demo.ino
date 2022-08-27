//
//    FILE: INA226_demo.ino
//  AUTHOR: Rob Tillaart
// PURPOSE: demo
//    DATE: 2021-05-18
//     URL: https://github.com/RobTillaart/INA226


#include "INA226.h"
#include "Wire.h"

INA226 INA(0x41);


void setup()
{
  Serial.begin(115200);
  Serial.println(__FILE__);

  Wire.begin();
  if (!INA.begin() )
  {
    Serial.println("could not connect. Fix and Reboot");
  }
  INA.setMaxCurrentShunt(1, 0.002);
}


void loop()
{
  Serial.println("\nBUS\tSHUNT\tCURRENT\tPOWER");
  for (int i = 0; i < 20; i++)
  {
    Serial.print(INA.getBusVoltage(), 3);
    Serial.print("\t");
    Serial.print(INA.getShuntVoltage_mV(), 3);
    Serial.print("\t");
    Serial.print(INA.getCurrent_mA(), 3);
    Serial.print("\t");
    Serial.print(INA.getPower_mW(), 3);
    Serial.println();
    delay(1000);
  }
}


// -- END OF FILE --

