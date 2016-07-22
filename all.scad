include <510.scad>;
include <sled.scad>;
include <switch.scad>;
include <display.scad>;
include <helpers.scad>;
include <enclosure.scad>;

/* [General] */
// If visualisation is enabled, the parts are rendered
visualize = "yes"; // [yes, no]

// Select type of enclosure
boxType = "hammond1590b"; // [hammond1550a: Hammond 1550A, hammond1590a: Hammond 1590A, hammond1590b: Hammond 1590B, hammond1590g: Hammond 1590G]

// Select color of the enclosure
boxColor = "silver"; // [gray: Gray, silver:Silver, black:Black]

/* [510 connector] */
// Select your 510 connector
type_510_connector = "varitube22mmV2Slotted"; // [varitube12mmBottomFeed: Varitube 12mm Bottom Feed, varitube14mm: Varitube 14mm, varitube22mmBottomFeed: Varitube 22mm Bottom Feed, varitube22mmV2Flat: Varitube 22mm Flat V2, varitube22mmV2Slotted: Varitube 22mm Slotted V2, varitube28.5mm: Varitube 28.5mm]
// Select color of the 510 connector
color_510_connector = "gray"; // [gray: Gray, silver:Silver, black:Black]

// x offset from the center
xOffset_510 = 0; // [-100:0.1:100]
// y offset from the center
yOffset_510 = 0; // [-100:0.1:100]
// z offset from the bottom
zOffset_510 = 112.4; // [-200:0.1:200]

/* [Fire Switch] */
// Enable a fire switch?
enableFireSwitch = "yes"; // [yes, no]
// Select type of fire switch
fireSwitchType = "cloneTec12mmRaised"; // [cloneTec12mmFlat: CloneTec 12mm Flat, cloneTec12mmRaised: CloneTec 12mm Raised, vandal16mmFlat: Vandal Proof 16mm Flat, vandal16mmRaised: Vandal Proof 16mm Raised, vandal19mmFlat: Vandal Proof 19mm Flat, vandal19mmRaised: Vandal Proof 19mm Raised]
// Select color of fire switch
fireSwitchColor = "gray"; // [gray: Gray, silver: Silver, black: Black]

// x offset from the center
xOffsetFireSwitch = 30.3; // [-100:0.1:100]
// y offset from the center
yOffsetFireSwitch = 0; // [-100:0.1:100]
// z offset from the bottom
zOffsetFireSwitch = 90; // [-200:0.1:200]

// x rotation
xRotateFireSwitch = 0; // [0:360]
// y rotation
yRotateFireSwitch = 90; // [0:360]
// z rotation
zRotateFireSwitch = 0; // [0:360]

/* [Volt Meter] */
// Enable the volt meter?
enableVoltMeter = "yes"; // [yes, no]
// Select your volt meter type
voltMeterType = "seedVoltMeter"; // [seedVoltMeter: Seed Volt Meter Green, seedVoltMeter: Seed Volt Meter Red]
// Select color of the volt meter
voltMeterColor = "white"; // [white: White, gray: Gray, silver:Silver, black:Black]

// x offset from the center
xOffsetVoltMeter = 0; // [-100:0.1:100]
// y offset from the center
yOffsetVoltMeter = 4.5; // [-100:0.1:100]
// z offset from the bottom
zOffsetVoltMeter = 90; // [-200:0.1:200]

// x rotation
xRotateVoltMeter = 270; // [0:360]
// y rotation
yRotateVoltMeter = 0; // [0:360]
// z rotation
zRotateVoltMeter = 0; // [0:360]

/* [Sled] */
// Enable a battery sled?
enableSled = "yes"; // [yes, no]
// Select your volt meter type
sledType = "keystone1042"; // [keystone1042: Keystone 18650 Single (1042), keystone1048: Keystone 18650 Double (1048)]
// Select color of the volt meter
sledColor = "black"; // [white: White, gray: Gray, silver:Silver, black:Black]

// x offset from the center
xOffsetSled = 0; // [-100:0.1:100]
// y offset from the center
yOffsetSled = 13.5; // [-100:0.1:100]
// z offset from the bottom
zOffsetSled = 40.7; // [-200:0.1:200]

// x rotation
xRotateSled = 90; // [0:360]
// y rotation
yRotateSled = 90; // [0:360]
// z rotation
zRotateSled = 0; // [0:360]

/* [Hidden] */
$fn = 360;

rotate([0,0,$t*360]) {
    renderFull();
    if(visualize == "yes")
        visualisation();
}module renderFull() {
    difference() {
        enclosure(boxType, boxColor);
        
        translate([xOffset_510, yOffset_510, zOffset_510])
            color(boxColor) connector510(type_510_connector, false);
        
        if(enableFireSwitch == "yes")
            translate([xOffsetFireSwitch, yOffsetFireSwitch, zOffsetFireSwitch])
                rotate([xRotateFireSwitch, yRotateFireSwitch, zRotateFireSwitch])
                    color(boxColor) switch(fireSwitchType, false);
        
        if(enableVoltMeter == "yes")
            translate([xOffsetVoltMeter, yOffsetVoltMeter, zOffsetVoltMeter])
                rotate([xRotateVoltMeter, yRotateVoltMeter, zRotateVoltMeter])    
                    color(boxColor) display(voltMeterType, false);
        
        if(enableSled == "yes")
            translate([xOffsetSled, yOffsetSled, zOffsetSled])
                rotate([xRotateSled, yRotateSled, zRotateSled])    
                    sled(sledType, boxColor, false);
    }
}

module visualisation() {
    translate([xOffset_510, yOffset_510, zOffset_510])
        color(color_510_connector) connector510(type_510_connector);

    if(enableFireSwitch == "yes")
        translate([xOffsetFireSwitch, yOffsetFireSwitch, zOffsetFireSwitch])   
            rotate([xRotateFireSwitch, yRotateFireSwitch, zRotateFireSwitch])
                color(fireSwitchColor) switch(fireSwitchType);

    if(enableVoltMeter == "yes")
        translate([xOffsetVoltMeter, yOffsetVoltMeter, zOffsetVoltMeter])
            rotate([xRotateVoltMeter, yRotateVoltMeter, zRotateVoltMeter])    
                color(voltMeterColor) display(voltMeterType);

    if(enableSled == "yes")
            translate([xOffsetSled, yOffsetSled, zOffsetSled])
                rotate([xRotateSled, yRotateSled, zRotateSled])    
                    sled(sledType, sledColor);
}/**
 * Available 510 connectors:
 * 
 * Varitube:
 * 
 * + http://www.varitube.com/VT-510-V2-Connector--Self-adjusting-Center-Pin_p_364.html
 * + http://www.varitube.com/VT-510--Bottom-Feeding-510--Self-Adjusting-or-Manual_p_402.html
 */

//connector510("varitube14mm");
//connector510("varitube12mmBottomFeed");
//connector510("varitube22mmBottomFeed");
//connector510("varitube22mmV2Slotted");
//connector510("varitube22mmV2Plain");
//connector510("varitube28.5mm");

module connector510(type, holes=true) {
    if(type == "varitube12mmBottomFeed")
        varitube12mmBottomFeed(holes);

    if(type == "varitube14mm")
        varitube14mm(holes);

    if(type == "varitube22mmBottomFeed")
        varitube22mmBottomFeed(holes);

    if(type == "varitube22mmV2Slotted")
        varitube22mmV2Slotted(holes);

    if(type == "varitube22mmV2Plain")
        varitube22mmV2Flat(holes);
    
    if(type == "varitube28.5mm")
        varitube285mm(holes);
}

module varitube14mm(holes=true) {
    bodyDiameter = 10;
    bodyHeight = 10.52;
    
    ringDiameter = 14;
    ringHeight = 1;
    
    holeDiameter = 7;
    holeHeight = bodyHeight;
    
    varitubeBase(
    bodyDiameter, bodyHeight,
    ringDiameter, ringHeight,
    holeDiameter, holeHeight,
    holes, true);
}

module varitube12mm(holes=true) {
    bodyDiameter = 10;
    bodyHeight = 12;
    
    ringDiameter = 12;
    ringHeight = 1;
    
    holeDiameter = 7;
    holeHeight = bodyHeight;
    
    varitubeBase(
    bodyDiameter, bodyHeight,
    ringDiameter, ringHeight,
    holeDiameter, holeHeight,
    holes, false);
}

module varitube12mmBottomFeed(holes=true) {
    squonkHeight = 10;
    squonkDiameter = 3;
    squonkRadius = squonkDiameter / 2;
    
    
    group() {
        varitube12mm(holes);

        translate([0, 0, -12 - squonkHeight])
            cylinder(r=squonkRadius, h=squonkHeight);
    }
}

module varitube22mmBottomFeed(holes=true) {
    squonkHeight = 10;
    squonkDiameter = 3;
    squonkRadius = squonkDiameter / 2;
    
    group() {
        varitube22mmV2(holes, false);

        translate([0, 0, -10 - squonkHeight])
            cylinder(r=squonkRadius, h=squonkHeight);
    }
}

module varitube22mmV2Flat(holes=true) {
    varitube22mmV2(holes, false);
}

module varitube22mmV2Slotted(holes=true) {
    varitube22mmV2(holes, true);
}

module varitube22mmV2(holes=true, slotted=false) {
    bodyDiameter = 10;
    bodyHeight = 10.52;
    
    ringDiameter = 22;
    ringHeight = 1;
    
    holeDiameter = 7;
    holeHeight = bodyHeight;
    
    varitubeBase(
    bodyDiameter, bodyHeight,
    ringDiameter, ringHeight,
    holeDiameter, holeHeight,
    holes, slotted);
}

module varitube285mm(holes=true) {
    bodyDiameter = 10;
    bodyHeight = 10.52;
    
    ringDiameter = 28.5;
    ringHeight = 1;
    
    holeDiameter = 7;
    holeHeight = bodyHeight;
    
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
}/**
 * Available displays:
 * 
 * Seed Technology:
 * + http://media.digikey.com/pdf/Data%20Sheets/Seeed%20Technology/114990163_Web.pdf
 */

//display("seedVoltMeter");

module display(type, holes=true) {
    if(type == "seedVoltMeter")
        seedVoltMeter(holes);
}

module seedVoltMeter(holes=true) {
    displayLength = 24;
    displayWidth = 11;
    displayHeight = (holes) ? 9 : 10;
    
    boardLength = 30;
    boardWidth = 12;
    boardHeight = 2;
    
    padding = (boardLength - displayLength) / 2;

    translate([-boardLength / 2, -displayWidth / 2, 0])
        group() {
            cube([boardLength, boardWidth, boardHeight]);
            
            translate([padding, 0, boardHeight])
                cube([displayLength, displayWidth, displayHeight]);
        }
}/**
 * Available enclosures:
 *
 * Hammond:
 * + http://www.hammondmfg.com/pdf/1550A.pdf
 * + http://www.hammondmfg.com/pdf/1590A.pdf
 * + http://www.hammondmfg.com/pdf/1590B.pdf
 * + http://www.hammondmfg.com/pdf/1590G.pdf
 */
 
 //enclosure("hammond1550a", "grey");
 //enclosure("hammond1590a", "grey");
 //enclosure("hammond1590b", "grey");
 //enclosure("hammond1590g", "grey");
 
module enclosure(type, boxColor) {
    if(type == "hammond1550a")
        hammond1550a(boxColor);
    
    if(type == "hammond1590a")
        hammond1590a(boxColor);

    if(type == "hammond1590b")
        hammond1590b(boxColor);
    
    if(type == "hammond1590g")
        hammond1590g(boxColor);
}

module hammond1550a(boxColor="grey") {
    outerLength = 89;
    outerWidth = 35;
    bodyHeight = 26;
    lidHeight = 7;

    innerLength = 86;
    innerWidth = 32;
    innerHeight = 27.1;

    holeDiameter = 3.5;

    xOffsetHole = 5;
    yOffsetHole = 5;

    outerDiameter = 7;

    hammond(
        outerLength, outerWidth, bodyHeight, lidHeight,
        innerLength, innerWidth, innerHeight,
        holeDiameter, xOffsetHole, yOffsetHole,
        outerDiameter,boxColor);
}

module hammond1590a(boxColor="grey") {
    outerLength = 92.6;
    outerWidth = 38.5;
    outerHeight = 31;
    lidHeight = 4;
    bodyHeight = outerHeight - lidHeight;

    innerLength = 89.10;
    innerWidth = 35;
    innerHeight = 27.4;

    holeDiameter = 4;

    xOffsetHole = 5;
    yOffsetHole = 5;

    outerDiameter = 7;

    hammond(
        outerLength, outerWidth, bodyHeight, lidHeight,
        innerLength, innerWidth, innerHeight,
        holeDiameter, xOffsetHole, yOffsetHole,
        outerDiameter,boxColor);
    
}

module hammond1590b(boxColor="grey") {
    outerLength = 112.4;
    outerWidth = 60.5;
    outerHeight = 31;
    lidHeight = 4;
    bodyHeight = outerHeight - lidHeight;

    innerLength = 108.1;
    innerWidth = 56.5;
    innerHeight = 27;

    holeDiameter = 4;

    xOffsetHole = 5;
    yOffsetHole = 5;

    outerDiameter = 7;

    hammond(
        outerLength, outerWidth, bodyHeight, lidHeight,
        innerLength, innerWidth, innerHeight,
        holeDiameter, xOffsetHole, yOffsetHole,
        outerDiameter,boxColor);
    
}

module hammond1590g(boxColor="grey") {
    outerLength = 100;
    outerWidth = 50;
    outerHeight = 25;
    lidHeight = 4;
    bodyHeight = outerHeight - lidHeight;

    innerLength = 96.2;
    innerWidth = 46.2;
    innerHeight = 21;

    holeDiameter = 4;

    xOffsetHole = 5;
    yOffsetHole = 5;

    outerDiameter = 7;

    hammond(
        outerLength, outerWidth, bodyHeight, lidHeight,
        innerLength, innerWidth, innerHeight,
        holeDiameter, xOffsetHole, yOffsetHole,
        outerDiameter,boxColor);
    
}

module hammond(
    outerLength, outerWidth, bodyHeight, lidHeight,
    innerLength, innerWidth, innerHeight,
    holeDiameter, xOffsetHole, yOffsetHole,
    outerDiameter,
    boxColor)
{
    holeRadius = holeDiameter / 2;
    outerRadius = outerDiameter / 2;

    group() {
        translate([outerWidth / 2, (bodyHeight + lidHeight) / 2, 0]) {
            rotate([0, 270, 90]) {
                color(boxColor) body();
                translate([outerLength, 0, lidHeight + bodyHeight])
                    rotate([0,180,0])
                        %lid();
            }
        }
    }    

    module lid() {
        roundedBody(lidHeight);
        screwHoles(lidHeight, -outerRadius - 1);
    }

    module body() {
        roundedBody(bodyHeight);
        screwHoles(bodyHeight, 10);    
    }

    module roundedBody(height) {    
        xOffset = (outerLength - innerLength) / 2;
        yOffset = (outerWidth - innerWidth) / 2;
        zOffset = (height - innerHeight);

        difference() {
            hull() {
                translate([outerRadius, outerRadius, outerRadius])
                    cylinder(r=outerRadius, h=height - outerRadius);

                translate([outerRadius, outerWidth - outerRadius, outerRadius])
                    cylinder(r=outerRadius, h=height - outerRadius);

                translate([outerLength - outerRadius, outerWidth - outerRadius, outerRadius])
                    cylinder(r=outerRadius, h=height - outerRadius);

                translate([outerLength - outerRadius, outerRadius, outerRadius])
                    cylinder(r=outerRadius, h=height - outerRadius);

                translate([outerRadius, outerRadius, outerRadius])
                    rotate([0,90,0])
                        cylinder(r=outerRadius, h=outerLength - outerRadius * 2);

                translate([outerRadius, outerWidth - outerRadius, outerRadius])
                    rotate([0,90,0])
                        cylinder(r=outerRadius, h=outerLength - outerRadius * 2);

                translate([outerRadius, outerRadius, outerRadius])
                    rotate([270,90,0])
                        cylinder(r=outerRadius, h=outerWidth - outerRadius * 2);

                translate([outerLength - outerRadius, outerRadius, outerRadius])
                    rotate([270,90,0])
                        cylinder(r=outerRadius, h=outerWidth - outerRadius * 2);

                translate([outerRadius, outerRadius, outerRadius])
                    sphere(r=outerRadius);

                translate([outerRadius, outerWidth - outerRadius, outerRadius])
                    sphere(r=outerRadius);
                    
                translate([outerLength - outerRadius, outerRadius, outerRadius])
                    sphere(r=outerRadius);

                translate([outerLength - outerRadius, outerWidth - outerRadius, outerRadius])
                    sphere(r=outerRadius);
            }

            translate([xOffset, yOffset, yOffset])
                cube([innerLength, innerWidth, innerHeight + 1]);
        }
    }

    module screwHoles(height, zOffset) {
        group() {
            translate([0, 0, outerRadius])
                screwHole(height, zOffset);

            translate([0, outerWidth, outerRadius])
                rotate([0,0,270])
                    screwHole(height, zOffset);

            translate([outerLength, outerWidth, outerRadius])
                rotate([0,0,180])
                    screwHole(height, zOffset);

            translate([outerLength, 0, outerRadius])
                rotate([0,0,90])
                    screwHole(height, zOffset);
        }    
    }
    
    module screwHole(height, zOffset) {
        group() {
            difference() {
                group() {
                    translate([xOffsetHole - outerRadius, yOffsetHole - outerRadius, 0])
                        cube([outerRadius * 2, outerRadius, height - outerRadius]);

                    translate([xOffsetHole - outerRadius, yOffsetHole - outerRadius, 0])
                        cube([outerRadius, outerRadius * 2, height - outerRadius]);

                    translate([xOffsetHole, yOffsetHole, 0])
                        cylinder(r=outerRadius, h=height - outerRadius);
                }

                translate([xOffsetHole, yOffsetHole, zOffset])
                    cylinder(r=holeRadius, h=height * 2);
            }
        }
    }
}/**
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