include <../pcb.scad>;

raptor10a();

translate([5, -40, 0])
  rotate([0, 0, 90])
    color("black")
      text("10A");

translate([30, 0, 0])
  raptor20a();

translate([35, -40, 0])
  rotate([0, 0, 90])
    color("black")
      text("20A");
