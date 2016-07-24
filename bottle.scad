/**
 * Available Bottles:
 * 
 * + Fat Daddy Vapes 18mm: http://www.modmaker.co.uk/Mod-Making-Supplies/Squonk-Parts/Fat-Daddy-Vapes-18mm-Squonk-Bottles
 */

//$fn = 36;
//bottle("fdv18mm");

module bottle(type, capColor="silver", holes) {
  if(type == "fdv18mm")
    fdv18mm(capColor, holes);
}

module fdv18mm(capColor="silver", holes) {
  diameter = 18;
  height = 65;
  capHeight = 15;

  radius = diameter / 2;

  %group() {
    cylinder(r=radius, h=height-capHeight - 10);
    translate([0, 0, height-capHeight - 10])
      cylinder(r=radius - 2, h=2);
    translate([0, 0, height-capHeight - 8])
      cylinder(r=radius, h=2);
    translate([0, 0, height-capHeight - 6])
      cylinder(r=radius - 2, h=2);
    translate([0, 0, height-capHeight - 4])
      cylinder(r=radius, h=2);
    translate([0, 0, height-capHeight - 2])
      cylinder(r=radius - 2, h=2);
  }

  translate([0,0, height- capHeight])
    color(capColor) {
      cylinder(r=radius, h=capHeight);
      
      translate([0,0, capHeight])
        cylinder(r=1.5, h=8);
    }
}