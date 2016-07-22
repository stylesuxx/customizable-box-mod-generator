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

module switch(type, holes=true) {
    if(type == "cloneTec12mmFlat")
        cloneTec12mmFlat(holes);

    if(type == "cloneTec12mmRaised")
        cloneTec12mmRaised(holes);

    if(type == "vandal16mmFlat")
        vandal16mmFlat(holes);

    if(type == "vandal16mmRaised")
        vandal16mmRaised(holes);

    if(type == "vandal19mmFlat")
        vandal19mmFlat(holes);

    if(type == "vandal19mmRaised")
        vandal19mmRaised(holes);

}

module cloneTec12mmFlat(holes=true) {
    cloneTec12mm(holes, false);
}

module cloneTec12mmRaised(holes=true) {
    cloneTec12mm(holes, true);
}

module vandal16mmFlat(holes=true) {
    vandal16mm(holes, false);
}

module vandal16mmRaised(holes=true) {
    vandal16mm(holes, true);
}

module vandal19mmFlat(holes=true) {
    vandal19mm(holes, false);
}

module vandal19mmRaised(holes=true) {
    vandal19mm(holes, true);
}


module cloneTec12mm(holes=true, raised=false) {
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
        switchBase(
            radiusBottom, heightBottom,
            radiusRing, heightRing,
            radiusButton, heightButton);
}

module vandal16mm(holes=true, raised=false) {
    diameterBottom = 16;
    radiusBottom = diameterBottom / 2;
    heightBottom = 20;
    
    diameterRing = 18;
    radiusRing = diameterRing / 2;
    heightRing = 1.5;
    
    diameterButton = 11.7;
    radiusButton = diameterButton / 2;
    heightButton = (raised) ? 1.2 : 0;
    
    translate([0, 0, -heightBottom])
        switchBase(
            radiusBottom, heightBottom,
            radiusRing, heightRing,
            radiusButton, heightButton);
}

module vandal19mm(holes=true, raised=false) {
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

        translate([0, 0, heightBottom]) {
            hull() {
                cylinder(r=radiusRing, h=heightRing / 2);
            
                translate([0, 0, heightRing / 2])
                    cylinder(r=radiusButton + 0.5, h=heightRing / 2);
            }
        }
            
        translate([0, 0, heightBottom + heightRing])
            cylinder(r=radiusButton, h=heightButton);
    }
}