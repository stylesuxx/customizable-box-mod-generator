include <../parametric_hammond.scad>;
//$fn = 36;

translate([-110, 0, 0]) {
  enclosure("hammond1550q", "both");
  translate([-0, -60, 0])
    rotate([0, 0, 90])
      color("black") text("1550Q");
}

translate([-50, 0, 0]) {
  enclosure("hammond1550p", "both");
  translate([-0, -60, 0])
    rotate([0, 0, 90])
      color("black") text("1550P");
}

enclosure("hammond1550a", "both");
translate([-0, -60, 0])
  rotate([0, 0, 90])
    color("black") text("1550A");

translate([41, 0, 0]) {
  enclosure("hammond1590a", "both");
  translate([-0, -60, 0])
    rotate([0, 0, 90])
      color("black") text("1590A");
}

translate([90, 0, 0]) {
  enclosure("hammond1590g", "both");
  translate([-0, -60, 0])
    rotate([0, 0, 90])
      color("black") text("1590G");
}

translate([150, 0, 0]) {
  enclosure("hammond1590b", "both");
  translate([-0, -60, 0])
    rotate([0, 0, 90])
      color("black") text("1590B");
}

translate([217, 0, 0]) {
  enclosure("hammond1550b", "both");
  translate([-0, -60, 0])
    rotate([0, 0, 90])
      color("black") text("1550B");
}
