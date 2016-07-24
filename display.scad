/**
 * Available displays:
 * 
 * Seed Technology:
 * + http://media.digikey.com/pdf/Data%20Sheets/Seeed%20Technology/114990163_Web.pdf
 */

//display("seedVoltMeterGreen");
//display("seedVoltMeterYellow");
//display("seedVoltMeterRed");

module display(type, displayColor="white", holes=true) {
  if(type == "seedVoltMeterGreen")
    seedVoltMeter(displayColor, "green", holes);

  if(type == "seedVoltMeterYellow")
    seedVoltMeter(displayColor, "yellow", holes);

  if(type == "seedVoltMeterRed")
    seedVoltMeter(displayColor, "red", holes);
}

module seedVoltMeter(displayColor="white", ledColor="green", holes=true) {
  displayLength = 24;
  displayWidth = 11;
  displayHeight = (holes) ? 9 : 10;

  boardLength = 30;
  boardWidth = 12;
  boardHeight = 2;

  padding = (boardLength - displayLength) / 2;

  segmentLength = 8;
  paddingSegment = 2.2;
  segmentWidth = (displayLength - paddingSegment * 4) / 3;

  segments = [
    [padding + 1.5, 1.5, boardHeight],
    [padding + segmentWidth + paddingSegment * 2, 1.5, boardHeight],
    [padding + (segmentWidth + paddingSegment) * 2 + paddingSegment, 1.5, boardHeight]
  ];

  translate([-boardLength / 2, -displayWidth / 2, 0]) {
    color(displayColor)
      group() {
        cube([boardLength, boardWidth, boardHeight]);

        difference() {
          translate([padding, 0, boardHeight])
            cube([displayLength, displayWidth, displayHeight]);

          if(holes)
            for(pos=segments)
              translate(pos)
                segment(displayHeight + 1);
        }
      }

      if(holes)
        for(pos=segments)
          translate(pos)
            color(ledColor)
              segment(displayHeight);
  }

  module segment(height, color="white") {
    length = segmentWidth - 2;
    width = 0.5;
    horizontal = [
      [1, 0, 0],
      [1, (segmentLength - width) / 2, 0],
      [1, segmentLength - width, 0]
    ];

    vertical = [
      [0, width, 0],
      [segmentWidth - width, width, 0],
      [0, width + (segmentLength - width * 3) / 2 +width, 0],
      [segmentWidth - width, width + (segmentLength - width * 3) / 2 +width, 0]
    ];

    group() {
      for(pos=horizontal)
        translate(pos)
          cube([length, width, height]);

      for(pos=vertical)
        translate(pos)
          cube([width, (segmentLength - width * 3) / 2, height]);

      translate([segmentWidth + width * 1.5, 0, 0])
        cube([width, width, height]);
    }
  }
}