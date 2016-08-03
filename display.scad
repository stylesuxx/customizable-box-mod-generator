include <seed_technology_voltmeter.scad>;

//display("seedVoltMeterGreen");
//display("seedVoltMeterYellow");
//display("seedVoltMeterRed");
//display("seedVoltMeterBlue");

module display(type, displayColor="white", holes=true) {
  if(type == "seedVoltMeterGreen")
    seedVoltMeter(displayColor, "green", holes);

  if(type == "seedVoltMeterYellow")
    seedVoltMeter(displayColor, "yellow", holes);

  if(type == "seedVoltMeterRed")
    seedVoltMeter(displayColor, "red", holes);

  if(type == "seedVoltMeterBlue")
    seedVoltMeter(displayColor, "blue", holes);
}
