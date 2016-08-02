/**
 * Available enclosures:
 *
 * Hammond:
 * + http://www.hammondmfg.com/pdf/1550A.pdf
 * + http://www.hammondmfg.com/pdf/1550B.pdf
 * + http://www.hammondmfg.com/pdf/1550P.pdf
 * + http://www.hammondmfg.com/pdf/1550Q.pdf
 *
 * + http://www.hammondmfg.com/pdf/1590A.pdf
 * + http://www.hammondmfg.com/pdf/1590B.pdf
 * + http://www.hammondmfg.com/pdf/1590BS.pdf
 * + http://www.hammondmfg.com/pdf/1590G.pdf
 */
$fn = 36;

/* [Type] */
// Which part of the enclosure to view?
part = "both"; // [both, body, lid, test]

// Which type of box do you want?
type = "hammond1550a"; // [hammond1550a, hammond1550b, hammond1550p, hammond1550q, hammond1590a, hammond1590b, hammond1590g]

/* [Body] */

// Adjust in case your magnets do not fit width wise.
diameterOffsetBodyHole = -0.2; // [-5:0.05:5]

// Increase in case your magnet holders are too flimsy.
additionalWallBody = 0; // [-5:0.05:5]

// Decrease in case your magnets do not fit height wise.
zOffsetBodyHole = 0; // [-5:0.05:5]

/* [Lid] */

// Adjust in case your magnets do not fit width wise
diameterOffsetLidHole = 0.1; // [-5:0.05:5]

// Increase in case your magnet holder walls are too flimsy
additionalWallLid = 0; // [-5:0.05:5]

// Decrease in case your magnets do not fit height wise.
zOffsetLidHole = 0; // [-5:0.05:5]

// The width of the snaps
snapWidth = 1; // [-5:0.05:5]

/* [Hidden] */
print = true;

enclosure(type, part);
 
module enclosure(type, part, boxColor="grey") {
  if(type == "hammond1550a")
    hammond1550a(part, boxColor);

  if(type == "hammond1550b")
    hammond1550b(part, boxColor);

  if(type == "hammond1550p")
    hammond1550p(part, boxColor);

  if(type == "hammond1550q")
    hammond1550q(part, boxColor);

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
  outerHeight = 30.1;
  lidHeight = 4.1;

  innerLength = 86;
  innerWidth = 32;
  innerHeight = 27.1;

  postDiameter = 4;
  postWidthBody = 6.5;
  postWidthLid = 6.5;
  holeDiameterBody = 3.5;
  holeDiameterLid = 4;

  xOffsetHole = 5;
  yOffsetHole = 5;

  outerDiameter = 7;

  hammond(
    outerLength, outerWidth, outerHeight, lidHeight,
    innerLength, innerWidth, innerHeight,
    postWidthBody, holeDiameterBody,
    postWidthLid, holeDiameterLid,
    xOffsetHole, yOffsetHole,
    outerDiameter, postDiameter,
    part, boxColor);
}

module hammond1550b(part="both", boxColor="grey") {
  outerLength = 114.50;
  outerWidth = 64;
  outerHeight = 30.1;
  lidHeight = 4.1;

  innerLength = 111.50;
  innerWidth = 60.58;
  innerHeight = 27.1;

  postDiameter = 4;
  postWidthBody = 6.5;
  postWidthLid = 6.5;
  holeDiameterBody = 3.5;
  holeDiameterLid = 4;

  xOffsetHole = 5;
  yOffsetHole = 5;

  outerDiameter = 7;

  hammond(
    outerLength, outerWidth, outerHeight, lidHeight,
    innerLength, innerWidth, innerHeight,
    postWidthBody, holeDiameterBody,
    postWidthLid, holeDiameterLid,
    xOffsetHole, yOffsetHole,
    outerDiameter, postDiameter,
    part, boxColor);
}

module hammond1550p(part="both", boxColor="grey") {
  outerLength = 80;
  outerWidth = 55;
  outerHeight = 25.1;
  lidHeight = 4.1;

  innerLength = 76.13;
  innerWidth = 52;
  innerHeight = 22.1;

  postDiameter = 4;
  postWidthBody = 6.5;
  postWidthLid = 6.5;
  holeDiameterBody = 3.5;
  holeDiameterLid = 4;

  xOffsetHole = 5;
  yOffsetHole = 5;

  outerDiameter = 7;

  hammond(
    outerLength, outerWidth, outerHeight, lidHeight,
    innerLength, innerWidth, innerHeight,
    postWidthBody, holeDiameterBody,
    postWidthLid, holeDiameterLid,
    xOffsetHole, yOffsetHole,
    outerDiameter, postDiameter,
    part, boxColor);
}

module hammond1550q(part="both", boxColor="grey") {
  outerLength = 60;
  outerWidth = 55;
  outerHeight = 30.1;
  lidHeight = 4.1;

  innerLength = 57;
  innerWidth = 51;
  innerHeight = 26.8;

  postDiameter = 4;
  postWidthBody = 6.5;
  postWidthLid = 6.5;
  holeDiameterBody = 3.5;
  holeDiameterLid = 4;

  xOffsetHole = 5;
  yOffsetHole = 5;

  outerDiameter = 7;

  hammond(
    outerLength, outerWidth, outerHeight, lidHeight,
    innerLength, innerWidth, innerHeight,
    postWidthBody, holeDiameterBody,
    postWidthLid, holeDiameterLid,
    xOffsetHole, yOffsetHole,
    outerDiameter, postDiameter,
    part, boxColor);
}

module hammond1590a(part="both", boxColor="grey") {
  outerLength = 92.6;
  outerWidth = 38.5;
  outerHeight = 31;
  lidHeight = 4.1;

  innerLength = 89.10;
  innerWidth = 35;
  innerHeight = 27.4;

  postDiameter = 4;
  postWidthBody = 6.5;
  postWidthLid = 6.5;
  holeDiameterBody = 3.5;
  holeDiameterLid = 4;

  xOffsetHole = 5;
  yOffsetHole = 5;

  outerDiameter = 7;

  hammond(
    outerLength, outerWidth, outerHeight, lidHeight,
    innerLength, innerWidth, innerHeight,
    postWidthBody, holeDiameterBody,
    postWidthLid, holeDiameterLid,
    xOffsetHole, yOffsetHole,
    outerDiameter, postDiameter,
    part, boxColor);
}

module hammond1590b(part="both", boxColor="grey") {
  outerLength = 112.4;
  outerWidth = 60.5;
  outerHeight = 31;
  lidHeight = 4.1;

  innerLength = 108.1;
  innerWidth = 56.5;
  innerHeight = 27;

  postDiameter = 4;
  postWidthBody = 6;
  postWidthLid = 6;
  holeDiameterBody = 3.5;
  holeDiameterLid = 4;

  xOffsetHole = 5;
  yOffsetHole = 5;

  outerDiameter = 7;

  hammond(
    outerLength, outerWidth, outerHeight, lidHeight,
    innerLength, innerWidth, innerHeight,
    postWidthBody, holeDiameterBody,
    postWidthLid, holeDiameterLid,
    xOffsetHole, yOffsetHole,
    outerDiameter, postDiameter,
    part, boxColor);
}

module hammond1590g(part="both", boxColor="grey") {
  outerLength = 100;
  outerWidth = 50;
  outerHeight = 25;
  lidHeight = 4.1;

  innerLength = 96.2;
  innerWidth = 46.2;
  innerHeight = 21;

  postDiameter = 4;
  postWidthBody = 6.5;
  postWidthLid = 6.5;
  holeDiameterBody = 3.5;
  holeDiameterLid = 4;

  xOffsetHole = 5;
  yOffsetHole = 5;

  outerDiameter = 7;

  hammond(
    outerLength, outerWidth, outerHeight, lidHeight,
    innerLength, innerWidth, innerHeight,
    postWidthBody, holeDiameterBody,
    postWidthLid, holeDiameterLid,
    xOffsetHole, yOffsetHole,
    outerDiameter, postDiameter,
    part, boxColor);
}

module hammond(
  outerLength, outerWidth, outerHeight, lidHeight,
  innerLength, innerWidth, innerHeight,
  postWidthBody, holeDiameterBody,
  postWidthLid, holeDiameterLid,
  xOffsetHole, yOffsetHole,
  outerDiameter, postDiameter,
  part, boxColor)
{
  holeRadiusBody = holeDiameterBody / 2;
  holeRadiusLid = holeDiameterLid / 2;
  outerRadius = outerDiameter / 2;
  postRadius = postDiameter / 2;
  bodyHeight = outerHeight - lidHeight;

  xOffset = (outerLength - innerLength) / 2;
  yOffset = (outerWidth - innerWidth) / 2;
  zOffset = (outerHeight - innerHeight) / 2;

  screwPosts = [
    [0, 0, zOffset],
    [outerLength, 0, zOffset],
    [outerLength, outerWidth, zOffset],
    [0, outerWidth, zOffset]
  ];

  translate([outerWidth / 2, -outerHeight / 2, outerLength]) {
    rotate([0,90,90]) {
      if(part == "both" && !print) {
        translate([outerLength, 0, outerHeight])
          rotate([0,180,0])
            color(boxColor)
              renderBody();

        %renderLid();
      }
      
      if(part == "both" && print) {
        yOffset = (outerLength + outerWidth) / 2;
        pos = [outerLength, yOffset, 0];
        rot = [90, 0, 270];

        translate(pos)
          rotate(rot){
            renderBody();
            
            translate([0, outerWidth +3, 0])
              renderLid();
          }
      }

      if(part == "body") {
        yOffset = (outerLength + outerWidth) / 2;
        pos = (print) ? [outerLength, yOffset, 0] : [outerLength, 0, outerHeight];
        rot = (print) ? [90, 0, 270] : [0,180,0];

        translate(pos)
          rotate(rot)
            color(boxColor)
              renderBody();
      }

      if(part == "lid") {
        yOffset = (outerLength + outerWidth) / 2;
        pos = (print) ? [outerLength, yOffset, 0] : [0, 0, 0];
        rot = (print) ? [90, 0, 270] : [0, 0, 0];

        translate(pos)
          rotate(rot)
            color(boxColor)
              renderLid();
      }

      if(part == "test") {
        length = 13;
        width = 13;
        height = 10;

        translate([outerLength - outerHeight, 0, outerLength/4])
        rotate([0, 90, 0]) {
          intersection() {
            translate([0, 0, outerHeight - height])
              cube([length, width, height]);

            translate([outerLength, 0, outerHeight])
              rotate([0,180,0])
                  renderBody();
          }

          translate([0, -outerWidth +  (length * 2), 0])
            intersection() {
              translate([0, outerWidth - width, outerHeight - height])
                cube([length, width, height]);
              
              translate([outerLength, 0, outerHeight])
                rotate([0,180,0])
                  renderLid();
            }
        }
      }
    }
  }
  
  module renderBody() {
    zOffsetPost = 0.1;
    postHeight = bodyHeight - zOffset + zOffsetPost;

    holeRadius = holeRadiusBody + diameterOffsetBodyHole / 2;

    difference() {
      group() {
        difference() {
          roundBody(bodyHeight);

          translate([xOffset, yOffset, zOffset])
            cube([innerLength, innerWidth, bodyHeight]);
        }

        translate([0, 0, -zOffsetPost])
          screwPosts(postWidthBody + additionalWallBody, postHeight);
      }

      postHoles(outerHeight, holeRadius, zOffsetBodyHole);
    }
  }
  
  module renderLid() {
    zOffsetPost = 0.1;
    postHeight = lidHeight - zOffset + zOffsetPost;

    holeHeight = 3;
    holeRadius = holeRadiusLid + diameterOffsetLidHole / 2;
    zOffsetHole = -zOffset + lidHeight - holeHeight + zOffsetLidHole;
    
    difference() {
      group() {
        difference() {
          roundBody(lidHeight);

          translate([xOffset, yOffset, zOffset])
            cube([innerLength, innerWidth, lidHeight]);
        }

        translate([0, 0, -zOffsetPost])
          screwPosts(postWidthLid + additionalWallLid, postHeight, holeRadiusLid);
        
        translate([outerLength / 2 - 3.5, yOffset, zOffset])
          cube([7, snapWidth, lidHeight - zOffset + 1]);
        
        translate([outerLength / 2 - 3.5, outerWidth - yOffset - snapWidth, zOffset])
          cube([7, snapWidth, lidHeight - zOffset + 1]);
        
        translate([yOffset, outerWidth / 2 - 3.5, zOffset])
          cube([snapWidth, 7, lidHeight - zOffset + 1]);
        
        translate([outerLength - yOffset - snapWidth, outerWidth / 2 - 3.5, zOffset])
          cube([snapWidth, 7, lidHeight - zOffset + 1]);
      }

      postHoles(outerHeight, holeRadius, zOffsetHole);
    }
  }

  module roundBody(cutHeight) {
    corners = [
      [outerRadius, outerRadius, outerRadius],
      [outerRadius, outerRadius, cutHeight],
      [outerLength - outerRadius, outerRadius, outerRadius],
      [outerLength - outerRadius, outerRadius, cutHeight],
      [outerLength - outerRadius, outerWidth - outerRadius, outerRadius],
      [outerLength - outerRadius, outerWidth - outerRadius, cutHeight],
      [outerRadius, outerWidth - outerRadius, outerRadius],
      [outerRadius, outerWidth - outerRadius, cutHeight]
    ];

    hull() {
      difference() {
        union() {
          for(pos = corners)
            translate(pos)
              sphere(r=outerRadius);
        }

        translate([0, 0, cutHeight])
          cube([outerLength, outerWidth, outerRadius +1]);
      }
    }
  }

  module postHoles(height, radius, zOffset) {
    for(i = [0:3])
      translate(screwPosts[i])
        rotate([0, 0, 90 * i])
          translate([xOffsetHole, yOffsetHole, zOffset])
            cylinder(r=radius, h=height);
  }

  module screwPosts(postWidth, height, holeRadius) {
    for(i = [0:3])
      translate(screwPosts[i])
        rotate([0, 0, 90 * i])
          screwPost(postWidth, height, holeRadius);
  }

  module screwPost(postWidth, height) {
    xOffsetRadius = min(xOffset, yOffset) + postWidth - postRadius;
    yOffsetRadius = min(xOffset, yOffset) + postWidth - postRadius;

    hull() {
      translate([min(xOffset, yOffset), min(xOffset, yOffset), 0]) {
        cube([postWidth, 1, height]);
        cube([1, postWidth , height]);
      }

      translate([xOffsetRadius, yOffsetRadius, 0])
        cylinder(r=postRadius, h=height);
    }
  }
}