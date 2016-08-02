include <../sled.scad>;
$fn = 360;

translate([90, -55, 0])
  sled("keystone1042empty");

translate([90, 0, 0])
  sled("keystone1042");

translate([0, 0, 0])
  sled("keystone1048");

translate([0, -55, 0])
  sled("keystone1048right");

translate([0, -110, 0])
  sled("keystone1048left");
