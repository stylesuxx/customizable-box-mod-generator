//$fn = 360;

part = "none"; // [holder, wheel]

wheelDiameter = 25;
wheelDiameterHole = 6.2;

wheelHeightTop = 1.5;
wheelHeightCenter = 1;
wheelHeightBottom = 1.5;

wheelRoundnessTop = 50;
wheelRoundnessBottom = 50;

wheelGripStep = 20;
wheelGripRadius = 1;
wheelGripOffset = 0.5;

wheelColor = "silver";
wheelHoles = true;
wheelTolerance = 0.0;

trimmerLength = 16;
trimmerWidth = 15.5;
trimmerHeight = 5.8;

trimmerDiameter = 7;

trimmerWallLeft = 2;
trimmerWalls = 1;

trimmerPadding = 6.5;

/*
thumbWheel(
  wheelDiameter, wheelDiameterHole,
  wheelHeightTop, wheelHeightCenter, wheelHeightBottom,
  wheelRoundnessTop, wheelRoundnessBottom,
  wheelGripStep, wheelGripRadius, wheelGripOffset,
  wheelColor, wheelHoles, wheelTolerance,
  trimmerLength, trimmerWidth, trimmerHeight, trimmerDiameter,
  trimmerWallLeft, trimmerWalls, trimmerPadding
);
*/
module thumbwheel(
  wheelDiameter, wheelDiameterHole,
  wheelHeightTop, wheelHeightCenter, wheelHeightBottom,
  wheelRoundnessTop, wheelRoundnessBottom,
  wheelGripStep, wheelGripRadius, wheelGripOffset,
  wheelColor, wheelHoles, wheelTolerance,
  trimmerLength, trimmerWidth, trimmerHeight, trimmerDiameter,
  trimmerWallLeft, trimmerWalls, trimmerPadding
) {
  wheel(
    wheelDiameter, wheelDiameterHole,
    wheelHeightTop, wheelHeightCenter, wheelHeightBottom,
    wheelRoundnessTop, wheelRoundnessBottom,
    wheelGripStep, wheelGripRadius, wheelGripOffset,
    wheelColor, wheelHoles, wheelTolerance
  );

  translate([0,0, -trimmerHeight - wheelHeightBottom - wheelHeightCenter])
    trimmerHolder(
      trimmerLength, trimmerWidth, trimmerHeight, trimmerDiameter,
      trimmerWallLeft, trimmerWalls, trimmerPadding
    );
}

/*
if(part == "both") {
  wheel(
    wheelDiameter, wheelDiameterHole,
    wheelHeightTop, wheelHeightCenter, wheelHeightBottom,
    wheelRoundnessTop, wheelRoundnessBottom,
    wheelGripStep, wheelGripRadius, wheelGripOffset,
    wheelColor, wheelHoles, wheelTolerance
  );

  translate([0,0, -trimmerHeight - wheelHeightBottom - wheelHeightCenter])
    trimmerHolder(
      trimmerLength, trimmerWidth, trimmerHeight, trimmerDiameter,
      trimmerWallLeft, trimmerWalls, trimmerPadding
    );
}
*/

if(part == "wheel") {
  wheel(
    wheelDiameter, wheelDiameterHole,
    wheelHeightTop, wheelHeightCenter, wheelHeightBottom,
    wheelRoundnessTop, wheelRoundnessBottom,
    wheelGripStep, wheelGripRadius, wheelGripOffset,
    wheelColor, wheelHoles, wheelTolerance
  );
}

if(part == "holder") {
  rotate([0, 270, 0])
    trimmerHolder(
      trimmerLength, trimmerWidth, trimmerHeight, trimmerDiameter,
      trimmerWallLeft, trimmerWalls, trimmerPadding
    );
}

module trimmerHolder(
  length, width, height, diameter,
  wallLeft, walls, padding
) {
  outerLength = length + wallLeft;
  outerWidth = width + walls * 2;
  outerHeight = height + wallLeft * 2;

  radius = diameter / 2;

  difference() {
    cube([outerLength, outerWidth, outerHeight], center=true);

    translate([walls, 0, 0])
      cube([outerLength, trimmerWidth, trimmerHeight], center=true);

    translate([-outerLength / 2 + walls + padding,0,0])
      cylinder(r=radius, h=outerHeight + 2, center=true);

    translate([walls + padding, 0, 0])
      cube([outerLength, diameter, outerHeight + 2], center=true);
  }
}

module wheel(
  diameter, holeDiameter,
  heightTop, heightCenter, heightBottom,
  roundnessTop, roundnessBottom,
  gripStep, gripRadius, gripOffset,
  wheelColor=0, holes=true, tolerance=0
) {
  diameter = diameter + tolerance * 2;
  height = heightTop + heightCenter + heightBottom + tolerance * 2;
  radius = diameter / 2;
  holeRadius = holeDiameter/ 2;
  
  heightCenter = (holes) ? heightCenter : heightTop + heightBottom + heightCenter + tolerance * 2;
  heightTop = (holes) ? heightTop : 0;
  heightBottom = (holes) ? heightBottom : 0;

  zOffset = heightCenter / 2;

  sphereUnitTop = (radius - heightTop) / 100;
  sphereUnitBottom = (radius - heightBottom) / 100;

  radiusHeightTop = radius - sphereUnitTop * roundnessTop;
  radiusHeightBottom = radius - sphereUnitBottom * roundnessBottom;

  sphereRadiusTop = (pow(radiusHeightTop, 2) * 4 + pow(diameter, 2)) / (radiusHeightTop * 8);
  sphereRadiusBottom = (pow(radiusHeightBottom, 2) * 4 + pow(diameter, 2)) / (radiusHeightBottom * 8);

  color(wheelColor) {
    difference() {
      intersection() {
        group() {
          //Top
          difference() {
            translate([0, 0, -(sphereRadiusTop - radiusHeightTop) + zOffset])
              sphere(r=sphereRadiusTop);

            translate([0, 0, -diameter / 2 + zOffset])
                cube(diameter, center=true);
          }

          // Center
          cylinder(r=radius, h=heightCenter, center=true);

          // Bottom
          difference() {
            translate([0, 0, (sphereRadiusBottom - radiusHeightBottom) - zOffset])
              sphere(r=sphereRadiusBottom);

            translate([0, 0, diameter / 2 - zOffset])
                cube(diameter, center=true);
          }
        }

        cylinder(r=radius, h=height, center=true);
      }

      if(holes) {
        cylinder(r=holeRadius, h=height + 2, center=true);

        for(i=[0:gripStep:360]) {
          rotate([0, 0, i])
            translate([radius + gripOffset, 0, 0])
              cylinder(r=gripRadius, h=height + 2, center=true);
        }
      }
    }
  }
}