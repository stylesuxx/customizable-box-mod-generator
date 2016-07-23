/**
 * Available displays:
 * 
 * Keystone 18650:
 * + http://keyelco.com/userAssets/file/M65p27.pdf
 */

//sled("keystone1042");
//sled("keystone1048");

module sled(type, sledColor="black", holes=true) {
  if(type == "keystone1042")
    keystone1042(sledColor, holes);

  if(type == "keystone1048")
      keystone1048(sledColor, holes);
}

module cell(radius, length) {
  cylinder(r=radius, h=length);
}

module keystone1042(sledColor="black", holes=true) {
  outerLength = 77.1;
  outerWidth = 20.7;
  outerHeight = 16;

  cellLength = 68.9;
  cellDiameter = 18;
  cellRadius = cellDiameter / 2;

  xOffset = (outerLength - cellLength) / 2;
  yOffset = (outerWidth - cellDiameter) / 2 + cellRadius;
  zOffset = cellRadius;

  translate([-outerLength / 2, -outerWidth / 2, 0])
    group() {
      color(sledColor) difference() {
        hull() {
          cube([outerLength, outerWidth, outerHeight / 2]);
          translate([0, 3.5, outerHeight / 2])
            cube([outerLength, outerWidth - 7, outerHeight / 2]);
        }

        translate([xOffset, yOffset, zOffset])
          rotate([0, 90, 0])
            cell(cellRadius, cellLength);

        translate([xOffset, -1, outerHeight / 2])
          cube([10, outerWidth + 2, outerHeight]);

        translate([outerLength / 2 - 15, -1, outerHeight / 2])
          cube([30, outerWidth + 2, outerHeight]);

        translate([outerLength - xOffset - 10, -1, outerHeight / 2])
          cube([10, outerWidth + 2, outerHeight]);
    }

    translate([xOffset, yOffset, zOffset])
      rotate([0, 90, 0])
        color("green") cell(cellRadius, cellLength);
  }
}

module keystone1048(sledColor="black", holes=true) {
  outerLength = 77.1;
  outerWidth = 39.8;
  outerHeight = 16;

  cellLength = 68.9;
  cellDiameter = 18;
  cellRadius = cellDiameter / 2;

  xOffset = (outerLength - cellLength) / 2;
  yOffset = (outerWidth - cellRadius * 2) / 2;
  zOffset = cellRadius;

  translate([-outerLength / 2, -outerWidth / 2, 0])
  group() {
    color(sledColor)
      difference() {
        hull() {
          cube([outerLength, outerWidth, outerHeight / 2]);
          translate([0, 3.5, outerHeight / 2])
            cube([outerLength, outerWidth - 7, outerHeight / 2]);
        }

        translate([xOffset, yOffset, zOffset])
          rotate([0, 90, 0])
            cell(cellRadius, cellLength);

        translate([xOffset, yOffset + cellRadius * 2, zOffset])
          rotate([0, 90, 0])
            cell(cellRadius, cellLength);

        translate([xOffset, -1, outerHeight / 2])
          cube([10, outerWidth + 2, outerHeight]);

        translate([xOffset, outerWidth/2 - cellRadius, outerHeight / 2])
          cube([cellLength, cellDiameter, outerHeight]);

        translate([outerLength / 2 - 15, -1, outerHeight / 2])
          cube([30, outerWidth + 2, outerHeight]);

        translate([outerLength - xOffset - 10, -1, outerHeight / 2])
          cube([10, outerWidth + 2, outerHeight]);
      }

      translate([xOffset, yOffset, zOffset])
        rotate([0, 90, 0])
          color("green") cell(cellRadius, cellLength);

      translate([xOffset, yOffset + cellRadius * 2, zOffset])
        rotate([0, 90, 0])
          color("green") cell(cellRadius, cellLength);
    }
}