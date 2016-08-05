include <seed_technology_voltmeter.scad>;

//display("seedVoltMeterGreen");
//display("seedVoltMeterYellow");
//display("seedVoltMeterRed");
//display("seedVoltMeterBlue");

module display(type, displayColor="white", holes=true, tolerance = 0) {
  if(type == "seedVoltMeterGreen")
    seedVoltMeter(displayColor, "green", holes, tolerance);

  if(type == "seedVoltMeterYellow")
    seedVoltMeter(displayColor, "yellow", holes, tolerance);

  if(type == "seedVoltMeterRed")
    seedVoltMeter(displayColor, "red", holes, tolerance);

  if(type == "seedVoltMeterBlue")
    seedVoltMeter(displayColor, "blue", holes, tolerance);
}
