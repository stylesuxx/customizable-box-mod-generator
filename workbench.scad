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
}