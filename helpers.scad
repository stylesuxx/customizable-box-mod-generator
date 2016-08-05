include <510.scad>;
include <pcb.scad>;
include <sled.scad>;
include <switch.scad>;
include <bottle.scad>;
include <cutout.scad>;
include <display.scad>;
include <parametric_hammond.scad>;
include <passthrough.scad>;
include <thumbwheel.scad>;

module renderFull() {
  difference() {
    enclosure(boxType, part, boxColor, (enableCover == "yes") ? coverHeight : 0, coverTolerance);

    group() {
      translate(pos510)
        rotate(rot510)
          connector510(type_510_connector, boxColor, false, tolerance_510);

      if(enableFireSwitch == "yes")
        translate(posFireSwitch)
          rotate(rotFireSwitch)
            switch(fireSwitchType, boxColor, false, toleranceFireSwitch);

      if(enableVoltMeter == "yes")
        translate(posVoltMeter)
          rotate(rotVoltMeter)
            display(voltMeterType, boxColor, false, toleranceVoltMeter);

      if(enableSled == "yes")
        translate(posSled)
          rotate(rotSled)
            sled(sledType, boxColor, false);

      if(enablePcb == "yes")
        translate(posPcb)
          rotate(rotPcb)
            pcb(pcbType, false);

      if(enableWheel == "yes")
        translate(posWheel)
          rotate(rotWheel)
            thumbwheel(
              wheelDiameter, wheelDiameterHole,
              wheelHeightTop, wheelHeightCenter, wheelHeightBottom,
              wheelRoundnessTop, wheelRoundnessBottom,
              wheelGripStep, wheelGripRadius, wheelGripOffset,
              boxColor, false, wheelTolerance,
              trimmerLength, trimmerWidth, trimmerHeight, trimmerDiameter,
              trimmerWallLeft, trimmerWalls, trimmerPadding
            );

      if(enableSquonk == "yes") {
        translate(posSquonkCutout)
          rotate(rotSquonkCutout)
            color(boxColor)
              elliptic(squonkCutoutHeight, squonkCutoutWidth, squonkCutoutDepth);

        translate(posSquonk)
          rotate(rotSquonk)
              bottle(squonkType, boxColor, false);
      }

      if(enablePassthrough == "yes") {
        if(passthroughType == "hole")
          translate(posPassthrough)
            rotate(rotPassthrough)
              color(boxColor)
                elliptic(passthroughDiameter, passthroughDiameter, passthroughDepth);
        else
          translate(posPassthrough)
            rotate(rotPassthrough)
              passthrough(passthroughType, boxColor, false);
      }
    }
  }
}

module visualisation() {
  translate(pos510)
    rotate(rot510)
      connector510(type_510_connector, color_510_connector);

  if(enableFireSwitch == "yes")
    translate(posFireSwitch)
      rotate(rotFireSwitch)
        switch(fireSwitchType, fireSwitchColor);

  if(enableVoltMeter == "yes")
    translate(posVoltMeter)
      rotate(rotVoltMeter)
        display(voltMeterType, voltMeterColor);

  if(enableSled == "yes")
    translate(posSled)
      rotate(rotSled)
        sled(sledType, sledColor);

  if(enablePcb == "yes")
    translate(posPcb)
      rotate(rotPcb)
        pcb(pcbType);

  if(enableWheel == "yes")
      translate(posWheel)
        rotate(rotWheel)
          thumbwheel(
            wheelDiameter, wheelDiameterHole,
            wheelHeightTop, wheelHeightCenter, wheelHeightBottom,
            wheelRoundnessTop, wheelRoundnessBottom,
            wheelGripStep, wheelGripRadius, wheelGripOffset,
            wheelColor, true, 0,
            trimmerLength, trimmerWidth, trimmerHeight, trimmerDiameter,
            trimmerWallLeft, trimmerWalls, trimmerPadding
          );

  if(enableSquonk == "yes") {
    translate(posSquonkCutout)
      rotate(rotSquonkCutout)
        #elliptic(squonkCutoutHeight, squonkCutoutWidth, squonkCutoutDepth);

    translate(posSquonk)
      rotate(rotSquonk)
        bottle(squonkType);
  }
  
  if(enablePassthrough == "yes") {
      if(passthroughType == "hole")
        translate(posPassthrough)
          rotate(rotPassthrough)
            #elliptic(passthroughDiameter, passthroughDiameter, passthroughDepth);

      else
        translate(posPassthrough)
          rotate(rotPassthrough)
            passthrough(passthroughType);
    }
}