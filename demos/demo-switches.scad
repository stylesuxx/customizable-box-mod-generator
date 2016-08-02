include <../switch.scad>;
$fn = 360;

translate([-55, -5,0])
  color("black")
    text("Raised");

translate([-55, -30,0])
  color("black")
    text("Flat");

switch("cloneTec12mmRaised");

translate([0, -25, 0])
  switch("cloneTec12mmFlat");

translate([4, -80,0])
  rotate([0, 0, 90])
    color("black")
      text("12mm");

translate([22, 0, 0])
  switch("vandal16mmRaised");

translate([22, -25, 0])
  switch("vandal16mmFlat");

translate([26, -80,0])
  rotate([0, 0, 90])
    color("black")
      text("16mm");

translate([50, 0, 0])
  switch("vandal19mmRaised");

translate([50, -25, 0])
  switch("vandal19mmFlat");

translate([56, -80,0])
  rotate([0, 0, 90])
    color("black")
      text("19mm");
