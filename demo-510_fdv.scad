include <510.scad>;
$fn = 360;

rotate([0, 0, 0]) {
  translate([-85, -5,0])
    color("black")
      text("Low Profile");

  translate([-120, -30,0])
    color("black")
      text("Low Profile Short");
  
  translate([-65, 20,0])
    color("black")
      text("Regular");

  translate([4, -90,0])
    rotate([0, 0, 90])
      color("black")
        text("15.5mm");

  translate([26, -90,0])
    rotate([0, 0, 90])
      color("black")
        text("22mm");

  translate([54, -90,0])
    rotate([0, 0, 90])
      color("black")
        text("30mm");

  translate([0, 25, 0])
    connector510("fdv15.5mmV4");

  translate([0, 0, 0])
    connector510("fdv15.5mmV4lp");
  
  translate([25, 25, 0])  
    connector510("fdv22mmV4");
    
  translate([57, 25, 0])
    connector510("fdv30mmV4");

  translate([25, 0, 0])
    connector510("fdv22mmV4lp");
    
  translate([25, -25, 0])
    connector510("fdv22mmV4lps");

}