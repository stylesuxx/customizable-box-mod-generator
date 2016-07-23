module renderFull() {
  difference() {
    enclosure(boxType, part, boxColor);
    
    color(boxColor) {
      group() {
        translate(pos510)
          connector510(type_510_connector, false);

        if(enableFireSwitch == "yes")
          translate(posFireSwitch)
            rotate(rotFireSwitch)
              switch(fireSwitchType, false);

        if(enableVoltMeter == "yes")
          translate(posVoltMeter)
            rotate(rotVoltMeter)
                display(voltMeterType, false);

        if(enableSled == "yes")
          translate(posSled)
            rotate(rotSled)
              sled(sledType, boxColor, false);
      }
    }
  }
}

module visualisation() {
  translate(pos510)
    color(color_510_connector)
      connector510(type_510_connector);

  if(enableFireSwitch == "yes")
    translate(posFireSwitch)
      rotate(rotFireSwitch)
        color(fireSwitchColor)
          switch(fireSwitchType);

  if(enableVoltMeter == "yes")
    translate(posVoltMeter)
      rotate(rotVoltMeter)
        color(voltMeterColor)
          display(voltMeterType);

  if(enableSled == "yes")
    translate(posSled)
      rotate(rotSled)
        sled(sledType, sledColor);
}