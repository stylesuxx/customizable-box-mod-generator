include <helpers.scad>;

/* [Enclosure] */

// Select type of enclosure
boxType = "hammond1590b"; // [hammond1550a: Hammond 1550A, hammond1550b: Hammond 1550B,hammond1550p: Hammond 1550P,hammond1550q: Hammond 1550Q, hammond1590a: Hammond 1590A, hammond1590b: Hammond 1590B, hammond1590g: Hammond 1590G]

// Select color of the enclosure
boxColor = "gray"; // [gray, silver, black, blue, green, lightgray, orange, purple, red, yellow]

/* [510 connector] */

// Select your 510 connector
type_510_connector = "varitube22mmV2Slotted"; // [fdv15.5mmV4: Fat Daddy Vapes V4 15.5mm, fdv22mmV4: Fat Daddy Vapes V4 22mm, fdv30mmV4: Fat Daddy Vapes V4 30mm, fdv15.5mmV4lp: Fat Daddy Vapes V4 15.5mm Low Profile, fdv22mmV4lp: Fat Daddy Vapes V4 22mm Low Profile, fdv22mmV4lps: Fat Daddy Vapes V4 22mm Low Profile Short, varitube12mmBottomFeed: Varitube 12mm Bottom Feed, varitube14mm: Varitube 14mm, varitube22mmBottomFeed: Varitube 22mm Bottom Feed, varitube22mmV2Flat: Varitube 22mm Flat V2, varitube22mmV2Slotted: Varitube 22mm Slotted V2, varitube28.5mm: Varitube 28.5mm]
// Select color of the 510 connector
color_510_connector = "silver"; // [gray, silver, black]

// x offset from the center
xOffset_510 = 0; // [-100:0.1:100]
// y offset from the center
yOffset_510 = 0; // [-100:0.1:100]
// z offset from the bottom
zOffset_510 = 112.4; // [-200:0.1:200]

// x rotation
xRotate_510 = 0; // [0:360]
// y rotation
yRotate_510 = 0; // [0:360]
// z rotation
zRotate_510 = 0; // [0:360]

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
voltMeterType = "seedVoltMeterGreen"; // [seedVoltMeterGreen: Seed Volt Meter Green, seedVoltMeteryellow: Seed Volt Meter Yellow, seedVoltMeterRed: Seed Volt Meter Red, seedVoltMeterBlue: Seed Volt Meter Blue]

// x offset from the center
xOffsetVoltMeter = 0; // [-100:0.1:100]
// y offset from the center
yOffsetVoltMeter = 4.5; // [-100:0.1:100]
// z offset from the bottom
zOffsetVoltMeter = 90; // [-200:0.1:200]

// x rotation
xRotateVoltMeter = 270; // [0:360]
// y rotation
yRotateVoltMeter = 180; // [0:360]
// z rotation
zRotateVoltMeter = 0; // [0:360]

/* [Sled] */

// Enable a battery sled?
enableSled = "yes"; // [yes, no]
// Select your volt meter type
sledType = "keystone1048"; // [keystone1042: Keystone single 18650 Single (1042), keystone1048: Keystone dual 18650 (1048)]

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

/* [PCB] */

// Enable a pcb?
enablePcb = "yes"; // [yes, no]
// Select PCB
pcbType = "raptor10a"; // [raptor10a: Naos Raptor 10A, raptor20a: Naos Raptor 20A]

// x offset from the center
xOffsetPcb = -21.4; // [-100:0.1:100]
// y offset from the center
yOffsetPcb = 0; // [-100:0.1:100]
// z offset from the bottom
zOffsetPcb = 90; // [-200:0.1:200]

// x rotation
xRotatePcb = 90; // [0:360]
// y rotation
yRotatePcb = 0; // [0:360]
// z rotation
zRotatePcb = 270; // [0:360]

/* [Squonker] */

// Enable squonker?
enableSquonk = "no"; // [yes, no]
// Select Bottle type
squonkType = "fdv18mm"; // [fdv18mm: Fat Daddy Vapes 18mm round, raptor20a: Naos Raptor 20A]

// x offset from the center
xOffsetSquonk = -50; // [-100:0.1:100]
// y offset from the center
yOffsetSquonk = 0; // [-100:0.1:100]
// z offset from the bottom
zOffsetSquonk = 0; // [-200:0.1:200]

// x rotation
xRotateSquonk = 0; // [0:360]
// y rotation
yRotateSquonk = 0; // [0:360]
// z rotation
zRotateSquonk = 0; // [0:360]

// height
squonkCutoutHeight = 45; // [1:200]
// width
squonkCutoutWidth = 23; // [1:200]
// depth
squonkCutoutDepth = 5; // [1:200]

// x offset from the center
xOffsetSquonkCutout = 10; // [-100:0.1:100]
// y offset from the center
yOffsetSquonkCutout = -13.5; // [-100:0.1:100]
// z offset from the bottom
zOffsetSquonkCutout = 30; // [-200:0.1:200]

// x rotation
xRotateSquonkCutout = 0; // [0:360]
// y rotation
yRotateSquonkCutout = 0; // [0:360]
// z rotation
zRotateSquonkCutout = 0; // [0:360]

/* [Passthrough] */

// Enable passthrough?
enablePassthrough = "no"; // [yes, no]
// Select passthrough type
passthroughType = "hole"; // [hole: Hole, jack608: Switchcraft Unmated Power Jack]

// Passthrough hole diameter
passthroughDiameter = 5;
passthroughDepth = 6;

// x offset from the center
xOffsetPassthrough = -29.5; // [-100:0.1:100]
// y offset from the center
yOffsetPassthrough = 0; // [-100:0.1:100]
// z offset from the bottom
zOffsetPassthrough = 15; // [-200:0.1:200]

// x rotation
xRotatePassthrough = 90; // [0:360]
// y rotation
yRotatePassthrough = 90; // [0:360]
// z rotation
zRotatePassthrough = 0; // [0:360]

/* [View Mode] */

// If visualisation is enabled, the parts are rendered
visualize = "yes"; // [yes, no]
// Which parts of the box to display
part = "both"; // [both, body, lid]

/* [Hidden] */
sledColor = "black";
voltMeterColor = "white";

// Resolution for roundness: higher -> rounder edges -> longer render time
$fn = 36;

pos510 = [xOffset_510, yOffset_510, zOffset_510];
posFireSwitch = [xOffsetFireSwitch, yOffsetFireSwitch, zOffsetFireSwitch];
posVoltMeter = [xOffsetVoltMeter, yOffsetVoltMeter, zOffsetVoltMeter];
posSled = [xOffsetSled, yOffsetSled, zOffsetSled];
posPcb = [xOffsetPcb, yOffsetPcb, zOffsetPcb];
posSquonk = [xOffsetSquonk, yOffsetSquonk, zOffsetSquonk];
posSquonkCutout = [xOffsetSquonkCutout, yOffsetSquonkCutout, zOffsetSquonkCutout];
posPassthrough = [xOffsetPassthrough, yOffsetPassthrough, zOffsetPassthrough];

rot510 = [xRotate_510, yRotate_510, zRotate_510];
rotFireSwitch = [xRotateFireSwitch, yRotateFireSwitch, zRotateFireSwitch];
rotVoltMeter = [xRotateVoltMeter, yRotateVoltMeter, zRotateVoltMeter];
rotSled = [xRotateSled, yRotateSled, zRotateSled];
rotPcb = [xRotatePcb, yRotatePcb, zRotatePcb];
rotSquonk = [xRotateSquonk, yRotateSquonk, zRotateSquonk];
rotSquonkCutout = [xRotateSquonkCutout, yRotateSquonkCutout, zRotateSquonkCutout];
rotPassthrough = [xRotatePassthrough, yRotatePassthrough, zRotatePassthrough];

/**
 * To activate animation:
 * View -> Animated
 * Set FPS to 15 and steps to 100
 */
xRotate = (part != "both") ? 270 : 0;
yRotate = (part == "lid") ? 180 : 0;
zRotate = $t * 360;

rotate([xRotate, yRotate, zRotate]) {
  renderFull();
  if(visualize == "yes" && part == "both")
    visualisation();
}