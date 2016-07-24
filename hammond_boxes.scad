include <enclosure.scad>;

enclosure("hammond1550a", "both", "grey");
translate([-0, -60, 0])
  rotate([0, 0, 90])
    color("black") text("1550A");

translate([41, 0, 0]) {
  enclosure("hammond1590a", "both", "grey");
  translate([-0, -60, 0])
    rotate([0, 0, 90])
      color("black") text("1590A");
}

translate([90, 0, 0]) {
  enclosure("hammond1590g", "both", "grey");
  translate([-0, -60, 0])
    rotate([0, 0, 90])
      color("black") text("1590G");
}

translate([150, 0, 0]) {
  enclosure("hammond1590b", "both", "grey");
  translate([-0, -60, 0])
    rotate([0, 0, 90])
      color("black") text("1590B");
}
