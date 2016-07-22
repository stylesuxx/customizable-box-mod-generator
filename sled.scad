/**
 * Available displays:
 * 
 * Keystone 18650:
 * + http://keyelco.com/userAssets/file/M65p27.pdf
 */

//sled("keystone1042");

module sled(type, sledColor="black", holes=true) {
    if(type == "keystone1042")
        keystone1042(sledColor, holes);
}

module keystone1042(sledColor="black", holes=true) {
    outerLength = 77.1;
    outerWidth = 20.7;
    outerHeight = 16;
    
    cellLength = 68.9;
    cellDiameter = 18;
    cellRadius = cellDiameter / 2;
    
    xOffset = (outerLength - cellLength) / 2;
    yOffset = (outerWidth - cellDiameter) / 2 + cellRadius;
    zOffset = cellRadius;

    translate([-outerLength / 2, -outerWidth / 2, 0])
    group() {
        color(sledColor) difference() {
            
            hull() {
                cube([outerLength, outerWidth, outerHeight / 2]);
                
                translate([0, 3.5, outerHeight / 2])
                    cube([outerLength, outerWidth - 7, outerHeight / 2]);
            }
            
            translate([xOffset, yOffset, zOffset])
                rotate([0, 90, 0])
                    cylinder(r=cellRadius, h=cellLength);
            
            translate([xOffset, -1, outerHeight / 2])
                cube([10, outerWidth + 2, outerHeight]);
            
            translate([outerLength / 2 - 15, -1, outerHeight / 2])
                cube([30, outerWidth + 2, outerHeight]);
            
            translate([outerLength - xOffset - 10, -1, outerHeight / 2])
                cube([10, outerWidth + 2, outerHeight]);
            
        }
        
        translate([xOffset, yOffset, zOffset])
                rotate([0, 90, 0])
                    color("green") cylinder(r=cellRadius, h=cellLength);
    }
}