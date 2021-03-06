/**
 * Available switches:
 * 
 * CloneTec:
 * + http://www.modparts.co.uk/switches/317-12mm-clonetec-switch-raised-stainless-steel-0638183554302.html
 * + http://www.modparts.co.uk/switches/313-12mm-clonetec-switch-flat-stainless-steel-0638183554272.html
 *
 * Generic 16mm Vandal Proof:
 * + http://www.digikey.com/product-detail/en/e-switch/PV2H240BB/EG5144-ND/4028692
 * + http://www.digikey.com/product-detail/en/e-switch/PV2S240NN/PV2S240NN-ND/3777996
 *
 * Generic 19mm Vandal Proof:
 * + http://www.modparts.co.uk/switches/159-19mm-stainless-steel-vandal-proof-switch-with-raised-button-actuator-0638183551691.html
 * + http://www.modparts.co.uk/switches/161-19mm-stainless-steel-vandal-proof-switch-with-flat-actuator-0638183551714.html 
 */

//switch("cloneTec12mmFlat");
//switch("cloneTec12mmFlat", 0, false, 0.25);
//switch("cloneTec12mmRaised");
//switch("cloneTec12mmRaised", 0, false, 0.25);
//switch("vandal16mmFlat");
//switch("vandal16mmFlat", 0, false, 0.25);
//switch("vandal16mmRaised");
//switch("vandal16mmRaised", 0, false, 0.25);
//switch("vandal19mmFlat");
//switch("vandal19mmFlat", 0, false, 0.25);
//switch("vandal19mmRaised");
//switch("vandal19mmRaised", 0, false, 0.25);

module switch(type, switchColor="silver", holes=true, tolerance=0) {
    if(type == "cloneTec12mmFlat")
        cloneTec12mmFlat(switchColor, holes, tolerance);

    if(type == "cloneTec12mmRaised")
        cloneTec12mmRaised(switchColor, holes, tolerance);

    if(type == "vandal16mmFlat")
        vandal16mmFlat(switchColor, holes, tolerance);

    if(type == "vandal16mmRaised")
        vandal16mmRaised(switchColor, holes, tolerance);

    if(type == "vandal19mmFlat")
        vandal19mmFlat(switchColor, holes, tolerance);

    if(type == "vandal19mmRaised")
        vandal19mmRaised(switchColor, holes, tolerance);
}

module cloneTec12mmFlat(switchColor="silver", holes=true, tolerance=0) {
    cloneTec12mm(switchColor, holes, false, tolerance);
}

module cloneTec12mmRaised(switchColor="silver", holes=true, tolerance=0) {
    cloneTec12mm(switchColor, holes, true, tolerance);
}

module vandal16mmFlat(switchColor="silver", holes=true, tolerance=0) {
    vandal16mm(switchColor, holes, false, tolerance);
}

module vandal16mmRaised(switchColor="silver", holes=true, tolerance=0) {
    vandal16mm(switchColor, holes, true, tolerance);
}

module vandal19mmFlat(switchColor="silver", holes=true, tolerance=0) {
    vandal19mm(switchColor, holes, false, tolerance);
}

module vandal19mmRaised(switchColor="silver", holes=true, tolerance=0) {
    vandal19mm(switchColor, holes, true, tolerance);
}

module cloneTec12mm(switchColor="silver", holes=true, raised=false, tolerance=0) {
  diameterBottom = 12.1;
  radiusBottom = (diameterBottom + tolerance) / 2;
  heightBottom = 7.9;

  diameterRing = 14;
  radiusRing = diameterRing / 2;
  heightRing = 1.6;

  diameterButton = 8.6;
  radiusButton = diameterButton / 2;
  heightButton = (raised) ? 1.2 : 0;

  translate([0, 0, -heightBottom])
    color(switchColor)
      switchBase(
        radiusBottom, heightBottom,
        radiusRing, heightRing,
        radiusButton, heightButton);
}

module vandal16mm(switchColor="silver", holes=true, raised=false, tolerance=0) {
  diameterBottom = 16;
  heightBottom = 13.5;

  diameterRing = 18;
  heightRing = 1.5;

  diameterButton = 11.7;
  heightButton = (raised) ? 1.2 : 0;

  heightPins = 3.5;
  lengthPins = 2;
  widthPins = 0.5;
  paddingPins = 3;

  radiusButton = diameterButton / 2;
  radiusRing = diameterRing / 2;
  radiusBottom = (diameterBottom + tolerance) / 2;

  xOffsetPins = -lengthPins / 2;
  yOffsetPins = -widthPins / 2 - radiusBottom;

  translate([0, 0, -heightBottom]) {
    color(switchColor)
      switchBase(
        radiusBottom, heightBottom,
        radiusRing, heightRing,
        radiusButton, heightButton);

    color("gold") {
      translate([xOffsetPins, yOffsetPins + paddingPins, -heightPins])
        cube([lengthPins, widthPins, heightPins]);

      translate([xOffsetPins, -yOffsetPins - paddingPins, -heightPins])
        cube([lengthPins, widthPins, heightPins]);
    }
  }
}

module vandal19mm(switchColor="silver", holes=true, raised=false, tolerance=0) {
  diameterBottom = 19;
  heightBottom = 22.2;

  diameterRing = 22;
  heightRing = 1.6;

  diameterButton = 15;
  heightButton = (raised) ? 1.2 : 0;

  radiusBottom = (diameterBottom + tolerance ) / 2;
  radiusRing = diameterRing / 2;
  radiusButton = diameterButton / 2;

  translate([0, 0, -heightBottom])
    color(switchColor)
      switchBase(
        radiusBottom, heightBottom,
        radiusRing, heightRing,
        radiusButton, heightButton);
}

module switchBase(
    radiusBottom, heightBottom,
    radiusRing, heightRing,
    radiusButton, heightButton)
{
  group() {
    cylinder(r=radiusBottom, h=heightBottom + 1);

    translate([0, 0, heightBottom])
      hull() {
        cylinder(r=radiusRing, h=heightRing / 2);

        translate([0, 0, heightRing / 2])
          cylinder(r=radiusButton + 0.5, h=heightRing / 2);
      }

    translate([0, 0, heightBottom + heightRing])
      cylinder(r=radiusButton, h=heightButton);
  }
}