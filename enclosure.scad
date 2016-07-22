/**
 * Available enclosures:
 *
 * Hammond:
 * + http://www.hammondmfg.com/pdf/1550A.pdf
 * + http://www.hammondmfg.com/pdf/1590A.pdf
 * + http://www.hammondmfg.com/pdf/1590B.pdf
 * + http://www.hammondmfg.com/pdf/1590G.pdf
 */
 
 //enclosure("hammond1550a", "grey");
 //enclosure("hammond1590a", "grey");
 //enclosure("hammond1590b", "grey");
 //enclosure("hammond1590g", "grey");
 
module enclosure(type, boxColor) {
    if(type == "hammond1550a")
        hammond1550a(boxColor);
    
    if(type == "hammond1590a")
        hammond1590a(boxColor);

    if(type == "hammond1590b")
        hammond1590b(boxColor);
    
    if(type == "hammond1590g")
        hammond1590g(boxColor);
}

module hammond1550a(boxColor="grey") {
    outerLength = 89;
    outerWidth = 35;
    bodyHeight = 26;
    lidHeight = 7;

    innerLength = 86;
    innerWidth = 32;
    innerHeight = 27.1;

    holeDiameter = 3.5;

    xOffsetHole = 5;
    yOffsetHole = 5;

    outerDiameter = 7;

    hammond(
        outerLength, outerWidth, bodyHeight, lidHeight,
        innerLength, innerWidth, innerHeight,
        holeDiameter, xOffsetHole, yOffsetHole,
        outerDiameter,boxColor);
}

module hammond1590a(boxColor="grey") {
    outerLength = 92.6;
    outerWidth = 38.5;
    outerHeight = 31;
    lidHeight = 4;
    bodyHeight = outerHeight - lidHeight;

    innerLength = 89.10;
    innerWidth = 35;
    innerHeight = 27.4;

    holeDiameter = 4;

    xOffsetHole = 5;
    yOffsetHole = 5;

    outerDiameter = 7;

    hammond(
        outerLength, outerWidth, bodyHeight, lidHeight,
        innerLength, innerWidth, innerHeight,
        holeDiameter, xOffsetHole, yOffsetHole,
        outerDiameter,boxColor);
    
}

module hammond1590b(boxColor="grey") {
    outerLength = 112.4;
    outerWidth = 60.5;
    outerHeight = 31;
    lidHeight = 4;
    bodyHeight = outerHeight - lidHeight;

    innerLength = 108.1;
    innerWidth = 56.5;
    innerHeight = 27;

    holeDiameter = 4;

    xOffsetHole = 5;
    yOffsetHole = 5;

    outerDiameter = 7;

    hammond(
        outerLength, outerWidth, bodyHeight, lidHeight,
        innerLength, innerWidth, innerHeight,
        holeDiameter, xOffsetHole, yOffsetHole,
        outerDiameter,boxColor);
    
}

module hammond1590g(boxColor="grey") {
    outerLength = 100;
    outerWidth = 50;
    outerHeight = 25;
    lidHeight = 4;
    bodyHeight = outerHeight - lidHeight;

    innerLength = 96.2;
    innerWidth = 46.2;
    innerHeight = 21;

    holeDiameter = 4;

    xOffsetHole = 5;
    yOffsetHole = 5;

    outerDiameter = 7;

    hammond(
        outerLength, outerWidth, bodyHeight, lidHeight,
        innerLength, innerWidth, innerHeight,
        holeDiameter, xOffsetHole, yOffsetHole,
        outerDiameter,boxColor);
    
}

module hammond(
    outerLength, outerWidth, bodyHeight, lidHeight,
    innerLength, innerWidth, innerHeight,
    holeDiameter, xOffsetHole, yOffsetHole,
    outerDiameter,
    boxColor)
{
    holeRadius = holeDiameter / 2;
    outerRadius = outerDiameter / 2;

    group() {
        translate([outerWidth / 2, (bodyHeight + lidHeight) / 2, 0]) {
            rotate([0, 270, 90]) {
                color(boxColor) body();
                translate([outerLength, 0, lidHeight + bodyHeight])
                    rotate([0,180,0])
                        %lid();
            }
        }
    }    

    module lid() {
        roundedBody(lidHeight);
        screwHoles(lidHeight, -outerRadius - 1);
    }

    module body() {
        roundedBody(bodyHeight);
        screwHoles(bodyHeight, 10);    
    }

    module roundedBody(height) {    
        xOffset = (outerLength - innerLength) / 2;
        yOffset = (outerWidth - innerWidth) / 2;
        zOffset = (height - innerHeight);

        difference() {
            hull() {
                translate([outerRadius, outerRadius, outerRadius])
                    cylinder(r=outerRadius, h=height - outerRadius);

                translate([outerRadius, outerWidth - outerRadius, outerRadius])
                    cylinder(r=outerRadius, h=height - outerRadius);

                translate([outerLength - outerRadius, outerWidth - outerRadius, outerRadius])
                    cylinder(r=outerRadius, h=height - outerRadius);

                translate([outerLength - outerRadius, outerRadius, outerRadius])
                    cylinder(r=outerRadius, h=height - outerRadius);

                translate([outerRadius, outerRadius, outerRadius])
                    rotate([0,90,0])
                        cylinder(r=outerRadius, h=outerLength - outerRadius * 2);

                translate([outerRadius, outerWidth - outerRadius, outerRadius])
                    rotate([0,90,0])
                        cylinder(r=outerRadius, h=outerLength - outerRadius * 2);

                translate([outerRadius, outerRadius, outerRadius])
                    rotate([270,90,0])
                        cylinder(r=outerRadius, h=outerWidth - outerRadius * 2);

                translate([outerLength - outerRadius, outerRadius, outerRadius])
                    rotate([270,90,0])
                        cylinder(r=outerRadius, h=outerWidth - outerRadius * 2);

                translate([outerRadius, outerRadius, outerRadius])
                    sphere(r=outerRadius);

                translate([outerRadius, outerWidth - outerRadius, outerRadius])
                    sphere(r=outerRadius);
                    
                translate([outerLength - outerRadius, outerRadius, outerRadius])
                    sphere(r=outerRadius);

                translate([outerLength - outerRadius, outerWidth - outerRadius, outerRadius])
                    sphere(r=outerRadius);
            }

            translate([xOffset, yOffset, yOffset])
                cube([innerLength, innerWidth, innerHeight + 1]);
        }
    }

    module screwHoles(height, zOffset) {
        group() {
            translate([0, 0, outerRadius])
                screwHole(height, zOffset);

            translate([0, outerWidth, outerRadius])
                rotate([0,0,270])
                    screwHole(height, zOffset);

            translate([outerLength, outerWidth, outerRadius])
                rotate([0,0,180])
                    screwHole(height, zOffset);

            translate([outerLength, 0, outerRadius])
                rotate([0,0,90])
                    screwHole(height, zOffset);
        }    
    }
    
    module screwHole(height, zOffset) {
        group() {
            difference() {
                group() {
                    translate([xOffsetHole - outerRadius, yOffsetHole - outerRadius, 0])
                        cube([outerRadius * 2, outerRadius, height - outerRadius]);

                    translate([xOffsetHole - outerRadius, yOffsetHole - outerRadius, 0])
                        cube([outerRadius, outerRadius * 2, height - outerRadius]);

                    translate([xOffsetHole, yOffsetHole, 0])
                        cylinder(r=outerRadius, h=height - outerRadius);
                }

                translate([xOffsetHole, yOffsetHole, zOffset])
                    cylinder(r=holeRadius, h=height * 2);
            }
        }
    }
}