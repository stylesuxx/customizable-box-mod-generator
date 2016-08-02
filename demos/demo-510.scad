include <../510.scad>;
$fn = 360;

translate([30,50,0])
rotate([0, 0, 0]) {
  translate([-55, -5,0])
    color("black")
      text("Slotted");

  translate([-55, -30,0])
    color("black")
      text("Flat");

  translate([0, -25, 0])
    connector510("varitube12mmBottomFeed");

  translate([4, -90,0])
    rotate([0, 0, 90])
      color("black")
        text("12mm");

  translate([22, 0, 0])
    connector510("varitube14mm");

  translate([26, -90,0])
    rotate([0, 0, 90])
      color("black")
        text("14mm");

  translate([50, -25, 0])
    connector510("varitube22mmBottomFeed");

  translate([54, -90,0])
    rotate([0, 0, 90])
      color("black")
        text("22mm");

  translate([82, 0,0])
    connector510("varitube22mmV2Slotted");

  translate([82, -25, 0])
    connector510("varitube22mmV2Plain");

  translate([86, -90,0])
    rotate([0, 0, 90])
      color("black")
        text("22mm");

  translate([112, 0, 0])
    connector510("varitube28.5mm");

  translate([117, -90,0])
    rotate([0, 0, 90])
      color("black")
        text("28.5mm");
}
