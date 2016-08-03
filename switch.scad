/**
 * Available switches:
 * 
 * CloneTec:
 * + http://www.modparts.co.uk/switches/317-12mm-clonetec-switch-raised-stainless-steel-0638183554302.html
 * + http://www.modparts.co.uk/switches/313-12mm-clonetec-switch-flat-stainless-steel-0638183554272.html
 *
 * Generic 16mm Vandal Proof:
 * + http://www.modparts.co.uk/switches/156-16mm-stainless-steel-vandal-proof-switch-with-button-actuator-0638183551660.html
 * + http://www.modparts.co.uk/switches/158-16mm-stainless-steel-vandal-proof-switch-with-flat-actuator-0638183551684.html
 *
 * Generic 19mm Vandal Proof:
 * + http://www.modparts.co.uk/switches/159-19mm-stainless-steel-vandal-proof-switch-with-raised-button-actuator-0638183551691.html
 * + http://www.modparts.co.uk/switches/161-19mm-stainless-steel-vandal-proof-switch-with-flat-actuator-0638183551714.html 
 */
 
//switch("cloneTec12mmFlat");
//switch("cloneTec12mmRaised");
//switch("vandal16mmFlat");
//switch("vandal16mmRaised");
//switch("vandal19mmFlat");
//switch("vandal19mmRaised");

module switch(type, switchColor="silver", holes=true) {
    if(type == "cloneTec12mmFlat")
        cloneTec12mmFlat(switchColor, holes);

    if(type == "cloneTec12mmRaised")
        cloneTec12mmRaised(switchColor, holes);

    if(type == "vandal16mmFlat")
        vandal16mmFlat(switchColor, holes);

    if(type == "vandal16mmRaised")
        vandal16mmRaised(switchColor, holes);

    if(type == "vandal19mmFlat")
        vandal19mmFlat(switchColor, holes);

    if(type == "vandal19mmRaised")
        vandal19mmRaised(switchColor, holes);

}

module cloneTec12mmFlat(switchColor="silver", holes=true) {
    cloneTec12mm(switchColor, holes, false);
}

module cloneTec12mmRaised(switchColor="silver", holes=true) {
    cloneTec12mm(switchColor, holes, true);
}

module vandal16mmFlat(switchColor="silver", holes=true) {
    vandal16mm(switchColor, holes, false);
}

module vandal16mmRaised(switchColor="silver", holes=true) {
    vandal16mm(switchColor, holes, true);
}

module vandal19mmFlat(switchColor="silver", holes=true) {
    vandal19mm(switchColor, holes, false);
}

module vandal19mmRaised(switchColor="silver", holes=true) {
    vandal19mm(switchColor, holes, true);
}


module cloneTec12mm(switchColor="silver", holes=true, raised=false) {
  diameterBottom = 12.1;
  radiusBottom = diameterBottom / 2;
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

module vandal16mm(switchColor="silver", holes=true, raised=false) {
  diameterBottom = 16;
  radiusBottom = diameterBottom / 2;
  heightBottom = 17;

  diameterRing = 18;
  radiusRing = diameterRing / 2;
  heightRing = 1.5;

  diameterButton = 11.7;
  radiusButton = diameterButton / 2;
  heightButton = (raised) ? 1.2 : 0;

  translate([0, 0, -heightBottom])
    color(switchColor)
      switchBase(
        radiusBottom, heightBottom,
        radiusRing, heightRing,
        radiusButton, heightButton);
}

module vandal19mm(switchColor="silver", holes=true, raised=false) {
  diameterBottom = 19;
  radiusBottom = diameterBottom / 2;
  heightBottom = 22.2;

  diameterRing = 22;
  radiusRing = diameterRing / 2;
  heightRing = 1.6;

  diameterButton = 15;
  radiusButton = diameterButton / 2;
  heightButton = (raised) ? 1.2 : 0;

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