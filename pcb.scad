/**
 * Available PCB's:
 * 
 * + Naos Raptor 10A: https://media.digikey.com/pdf/Data%20Sheets/Lineage%20Power/Naos_Raptor_10A.pdf
 */

//raptor10a();

module raptor10a() {
  length= 10.4;
  width = 16.5;
  height = 6.84;
  
  pcbHeight = 1.5;
  componentHeight = height - pcbHeight;
  
  translate([-length / 2, -width / 2, 0])
    group() {
      color("green")
        cube([length, width, pcbHeight]);
      
      translate([0.5, width - length + 0.5  , pcbHeight])
        color("black")
          cube([length - 1, length - 1, componentHeight]);
      
      translate([0.5, 3, pcbHeight])
        color("brown")
          cube([(length) / 2 - 1, (length / 3) - 1, componentHeight / 2]);
      
      translate([length - (length / 3) - 1 , 3, pcbHeight])
        color("brown")
          cube([(length) / 2 - 1, (length / 3) - 1, componentHeight / 2]);
    }
}
