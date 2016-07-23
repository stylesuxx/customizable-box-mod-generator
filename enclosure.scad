/**
 * Available enclosures:
 *
 * Hammond:
 * + http://www.hammondmfg.com/pdf/1550A.pdf
 * + http://www.hammondmfg.com/pdf/1590A.pdf
 * + http://www.hammondmfg.com/pdf/1590B.pdf
 * + http://www.hammondmfg.com/pdf/1590G.pdf
 */
 
 //enclosure("hammond1550a", "both", "grey");
 //enclosure("hammond1590a", "both", "grey");
 //enclosure("hammond1590b", "both", "grey");
 //enclosure("hammond1590g", "both", "grey");
 
module enclosure(type, part, boxColor) {
    if(type == "hammond1550a")
        hammond1550a(part, boxColor);
    
    if(type == "hammond1590a")
        hammond1590a(part, boxColor);

    if(type == "hammond1590b")
        hammond1590b(part, boxColor);
    
    if(type == "hammond1590g")
        hammond1590g(part, boxColor);
}

module hammond1550a(part="both", boxColor="grey") {
    outerLength = 89;
    outerWidth = 35;
    bodyHeight = 26;
    lidHeight = 4;

    innerLength = 86;
    innerWidth = 32;
    innerHeight = 27.1;

    postWidth = 6.5;
    holeDiameter = 3.5;

    xOffsetHole = 5;
    yOffsetHole = 5;

    outerDiameter = 4;

    hammond(
        outerLength, outerWidth, bodyHeight, lidHeight,
        innerLength, innerWidth, innerHeight,
        postWidth, holeDiameter, xOffsetHole, yOffsetHole,
        outerDiameter,
        part, boxColor);
}

module hammond1590a(part="both", boxColor="grey") {
    outerLength = 92.6;
    outerWidth = 38.5;
    outerHeight = 31;
    lidHeight = 4;
    bodyHeight = outerHeight - lidHeight;

    innerLength = 89.10;
    innerWidth = 35;
    innerHeight = 27.4;

    postWidth = 6.5;
    holeDiameter = 4;

    xOffsetHole = 5;
    yOffsetHole = 5;

    outerDiameter = 4;

    hammond(
        outerLength, outerWidth, bodyHeight, lidHeight,
        innerLength, innerWidth, innerHeight,
        postWidth, holeDiameter, xOffsetHole, yOffsetHole,
        outerDiameter,
        part, boxColor);
    
}

module hammond1590b(part="both", boxColor="grey") {
    outerLength = 112.4;
    outerWidth = 60.5;
    outerHeight = 31;
    lidHeight = 4;
    bodyHeight = outerHeight - lidHeight;

    innerLength = 108.1;
    innerWidth = 56.5;
    innerHeight = 27;

    postWidth = 6;
    holeDiameter = 4;

    xOffsetHole = 5;
    yOffsetHole = 5;

    outerDiameter = 4;

    hammond(
        outerLength, outerWidth, bodyHeight, lidHeight,
        innerLength, innerWidth, innerHeight,
        postWidth, holeDiameter, xOffsetHole, yOffsetHole,
        outerDiameter,
        part, boxColor);
    
}

module hammond1590g(part="both", boxColor="grey") {
    outerLength = 100;
    outerWidth = 50;
    outerHeight = 25;
    lidHeight = 4;
    bodyHeight = outerHeight - lidHeight;

    innerLength = 96.2;
    innerWidth = 46.2;
    innerHeight = 21;

    postWidth = 6.5;
    holeDiameter = 4;

    xOffsetHole = 5;
    yOffsetHole = 5;

    outerDiameter = 4;

    hammond(
        outerLength, outerWidth, bodyHeight, lidHeight,
        innerLength, innerWidth, innerHeight,
        postWidth, holeDiameter, xOffsetHole, yOffsetHole,
        outerDiameter,
        part, boxColor);
    
}

module hammond(
    outerLength, outerWidth, bodyHeight, lidHeight,
    innerLength, innerWidth, innerHeight,
    postWidth, holeDiameter, xOffsetHole, yOffsetHole,
    outerDiameter,
    part, boxColor)
{
    holeRadius = holeDiameter / 2;
    outerRadius = outerDiameter / 2;
        
    xOffset = (outerLength - innerLength) / 2;
    yOffset = (outerWidth - innerWidth) / 2;
    zOffset = bodyHeight - innerHeight;

    xOffsetLid = outerWidth / 2;
    yOffsetLid = -(bodyHeight + lidHeight) / 2;
    zOffsetLid = outerLength;
    posLid = [xOffsetLid, yOffsetLid, zOffsetLid];
    rotLid = [0, 90, 90];
    
    xOffsetBody = outerWidth / 2;
    yOffsetBody = (bodyHeight + lidHeight) / 2;
    zOffsetBody = 0;
    posBody = [xOffsetBody, yOffsetBody, zOffsetBody];
    rotBody = [0, 270, 90];

    if(part == "both") {
        translate(posBody)
            rotate(rotBody)
                color(boxColor) body();

        translate(posLid)
            rotate(rotLid)
                %lid();
    }

    if(part == "body")
        translate(posBody)
            rotate(rotBody)
                color(boxColor) body();
    
    if(part == "lid")
        translate(posLid)
            rotate(rotLid)
                color(boxColor) lid();

    module lid() {
        difference() {
            union() {
                roundedBody(lidHeight);
                translate([0, 0, -zOffset])
                    screwPosts(lidHeight + zOffset);
            }
            
            translate([0, 0, -zOffset + 1])
                screwHoles(lidHeight);
        }
    }

    module body() {
        difference() {
            union() {
                roundedBody(bodyHeight);
                translate([0, 0, -zOffset])
                    screwPosts(bodyHeight + zOffset);
            }
            
            translate([0, 0, -zOffset + 1])
                screwHoles(bodyHeight);
        }
    }

    module roundedBody(height) {
        zOffset = (height - innerHeight);
        columnsXLength = outerWidth - outerRadius * 2;
        columnsYLength = outerLength - outerRadius * 2;
        columnsZLength = height - outerRadius;
        columnsX = [
            [outerRadius, outerRadius, outerRadius],
            [outerLength - outerRadius, outerRadius, outerRadius]
        ];
        columnsY = [
            [outerRadius, outerRadius, outerRadius],
            [outerRadius, outerWidth - outerRadius, outerRadius]
        ];
        columnsZ = [
            [outerRadius, outerRadius, outerRadius],
            [outerRadius, outerWidth - outerRadius, outerRadius],
            [outerLength - outerRadius, outerWidth - outerRadius, outerRadius],
            [outerLength - outerRadius, outerRadius, outerRadius]
        ];
        corners = [
            [outerRadius, outerRadius, outerRadius],
            [outerRadius, outerWidth - outerRadius, outerRadius],
            [outerLength - outerRadius, outerRadius, outerRadius],
            [outerLength - outerRadius, outerWidth - outerRadius, outerRadius]
        ];

        difference() {
            hull() {
                for(pos = columnsZ)
                    translate(pos)
                        cylinder(r=outerRadius, h=columnsZLength);

                for(pos = columnsX)
                    translate(pos)
                        rotate([270,90,0])
                            cylinder(r=outerRadius, h=columnsXLength);

                for(pos = columnsY)
                    translate(pos)
                        rotate([0,90,0])
                            cylinder(r=outerRadius, h=columnsYLength);

                for(pos = corners)
                    translate(pos)
                        sphere(r=outerRadius);
            }

            translate([xOffset, yOffset + outerDiameter / 2, yOffset])
                cube([innerLength, innerWidth - outerDiameter, innerHeight + 1]);

            translate([xOffset + outerDiameter / 2, yOffset, yOffset])
                cube([innerLength - outerDiameter, innerWidth, innerHeight + 1]);
        }
    }
    
    module screwPost(height) {
        xOffsetRadius = xOffset + postWidth - outerRadius;
        yOffsetRadius = yOffset + postWidth - outerRadius;

        hull() {
            translate([min(xOffset, yOffset), min(xOffset, yOffset), 0]) {
                cube([postWidth, 1, height]);
                cube([1, postWidth, height]);
            }                
            
            translate([xOffsetRadius, yOffsetRadius, 0])
                cylinder(r=outerRadius, h=height);
        }
    }
    
    module screwPosts(height) {
        posts = [
            [0, 0, 0],
            [outerLength, 0, 0],
            [outerLength, outerWidth, 0],
            [0, outerWidth, 0]
        ];

        for(i = [0:3])
            translate(posts[i])
                rotate([0, 0, 90 * i])
                    screwPost(height);
    }

    module screwHoles(height) {
        holes = [
            [xOffsetHole, yOffsetHole, 0],
            [xOffsetHole, outerWidth - yOffsetHole, 0],
            [outerLength - xOffsetHole, outerWidth - yOffsetHole, 0],
            [outerLength - xOffsetHole, yOffsetHole, 0]
        ];
        
        for(pos = holes)
            translate(pos)
                cylinder(r=holeRadius, h=height + 1);
    }
}