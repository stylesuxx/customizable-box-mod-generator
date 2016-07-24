/**
 * Available 510 connectors:
 * 
 * Varitube:
 * 
 * + http://www.varitube.com/VT-510-V2-Connector--Self-adjusting-Center-Pin_p_364.html
 * + http://www.varitube.com/VT-510--Bottom-Feeding-510--Self-Adjusting-or-Manual_p_402.html
 */

//connector510("varitube12mmBottomFeed");
//connector510("varitube14mm");
//connector510("varitube22mmBottomFeed");
//connector510("varitube22mmV2Slotted");
//connector510("varitube22mmV2Plain");
//connector510("varitube28.5mm");

module connector510(type, color510="silver", holes=true) {
  if(type == "varitube12mmBottomFeed")
    varitube12mmBottomFeed(color510, holes);

  if(type == "varitube14mm")
    varitube14mm(color510, holes);

  if(type == "varitube22mmBottomFeed")
    varitube22mmBottomFeed(color510, holes);

  if(type == "varitube22mmV2Slotted")
    varitube22mmV2Slotted(color510, holes);

  if(type == "varitube22mmV2Plain")
    varitube22mmV2Flat(color510, holes);

  if(type == "varitube28.5mm")
    varitube285mm(color510, holes);
}

module varitube14mm(color510="silver", holes=true) {
  bodyDiameter = 10;
  bodyHeight = 10.52;

  ringDiameter = 14;
  ringHeight = 1;

  holeDiameter = 7;
  holeHeight = bodyHeight;

  color(color510)
    varitubeBase(
      bodyDiameter, bodyHeight,
      ringDiameter, ringHeight,
      holeDiameter, holeHeight,
      holes, true);
}

module varitube12mm(color510="silver", holes=true) {
  bodyDiameter = 10;
  bodyHeight = 12;

  ringDiameter = 12;
  ringHeight = 1;

  holeDiameter = 7;
  holeHeight = bodyHeight;

  color(color510)
    varitubeBase(
      bodyDiameter, bodyHeight,
      ringDiameter, ringHeight,
      holeDiameter, holeHeight,
      holes, false);
}

module varitube12mmBottomFeed(color510="silver", holes=true) {
  squonkHeight = 10;
  squonkDiameter = 3;
  squonkRadius = squonkDiameter / 2;

  color(color510)
    group() {
      varitube12mm(holes);

      translate([0, 0, -12 - squonkHeight])
        cylinder(r=squonkRadius, h=squonkHeight);
    }
}

module varitube22mmBottomFeed(color510="silver", holes=true) {
  squonkHeight = 10;
  squonkDiameter = 3;
  squonkRadius = squonkDiameter / 2;

  color(color510)
    group() {
      varitube22mmV2(color510, holes, false);

      translate([0, 0, -10 - squonkHeight])
        cylinder(r=squonkRadius, h=squonkHeight);
    }
}

module varitube22mmV2Flat(color510="silver", holes=true) {
  varitube22mmV2(color510, holes, false);
}

module varitube22mmV2Slotted(color510="silver", holes=true) {
  varitube22mmV2(color510, holes, true);
}

module varitube22mmV2(color510="silver", holes=true, slotted=false) {
  bodyDiameter = 10;
  bodyHeight = 10.52;

  ringDiameter = 22;
  ringHeight = 1;

  holeDiameter = 7;
  holeHeight = bodyHeight;

  color(color510)
    varitubeBase(
      bodyDiameter, bodyHeight,
      ringDiameter, ringHeight,
      holeDiameter, holeHeight,
      holes, slotted);
}

module varitube285mm(color510="silver", holes=true) {
  bodyDiameter = 10;
  bodyHeight = 10.52;

  ringDiameter = 28.5;
  ringHeight = 1;

  holeDiameter = 7;
  holeHeight = bodyHeight;

  color(color510)
    varitubeBase(
      bodyDiameter, bodyHeight,
      ringDiameter, ringHeight,
      holeDiameter, holeHeight,
      holes, true);
}

module varitubeBase(
  bodyDiameter, bodyHeight,
  ringDiameter, ringHeight,
  holeDiameter, holeHeight,
  holes=true, slotted=true)
{
  bodyRadius = bodyDiameter / 2;
  ringRadius = ringDiameter / 2;
  holeRadius = holeDiameter / 2;

  union() {
    translate([0, 0, -bodyHeight])
      build();

    cube([0, 0, 0]);
  }

  module build() {
    difference() {
      union() {
        bottom();
        translate([0, 0, bodyHeight])
          top();
      }

      if(holes)
        translate([0, 0, ringHeight])
          cylinder(r=holeRadius, h=holeHeight + 1);
    }
  }

  module bottom() {
    cylinder(r=bodyRadius, h=bodyHeight + ringHeight / 2);
  }

  module top() {
    zOffset = ringHeight / 2;

    difference() {
      cylinder(r=ringRadius, h=ringHeight);

      if(holes && slotted) {
        translate([-ringDiameter / 2 - 1, 0, zOffset])
          cube([ringDiameter + 2, ringHeight, ringHeight]);

        translate([0, -ringDiameter / 2 - 1, zOffset])
          rotate([0, 0, 90])
            cube([ringDiameter + 2, ringHeight, ringHeight]);
      }
    }
  }
}