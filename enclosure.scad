/**
 * Available enclosures:
 *
 * Hammond:
 * + http://www.hammondmfg.com/pdf/1550A.pdf
 * + http://www.hammondmfg.com/pdf/1550B.pdf
 * + http://www.hammondmfg.com/pdf/1550C.pdf
 * + http://www.hammondmfg.com/pdf/1550D.pdf
 * + http://www.hammondmfg.com/pdf/1550E.pdf
 * + http://www.hammondmfg.com/pdf/1550F.pdf
 * + http://www.hammondmfg.com/pdf/1550G.pdf
 * + http://www.hammondmfg.com/pdf/1550H.pdf
 * + http://www.hammondmfg.com/pdf/1550J.pdf
 * + http://www.hammondmfg.com/pdf/1550K.pdf
 *
 * + http://www.hammondmfg.com/pdf/1590A.pdf
 * + http://www.hammondmfg.com/pdf/1590B.pdf
 * + http://www.hammondmfg.com/pdf/1590G.pdf
 */
 //$fn = 36;
 
//enclosure("hammond1550a", "both", "grey");
//enclosure("hammond1550b", "both", "grey");
//enclosure("hammond1550c", "both", "grey");
//enclosure("hammond1550d", "both", "grey");
//enclosure("hammond1550e", "both", "grey");
//enclosure("hammond1550f", "both", "grey");
//enclosure("hammond1550g", "both", "grey");
//enclosure("hammond1550h", "both", "grey");
//enclosure("hammond1550j", "both", "grey");
//enclosure("hammond1550k", "both", "grey");
//enclosure("hammond1550l", "both", "grey");
//enclosure("hammond1550m", "both", "grey");
//enclosure("hammond1550n", "both", "grey");
//enclosure("hammond1550p", "both", "grey");
//enclosure("hammond1550q", "both", "grey");

//enclosure("hammond1590a", "both", "grey");
//enclosure("hammond1590b", "both", "grey");
//enclosure("hammond1590g", "both", "grey");
 
module enclosure(type, part, boxColor="grey") {
  if(type == "hammond1550a")
    hammond1550a(part, boxColor);

  if(type == "hammond1550b")
    hammond1550b(part, boxColor);

  if(type == "hammond1550c")
    hammond1550c(part, boxColor);

  if(type == "hammond1550d")
    hammond1550d(part, boxColor);

  if(type == "hammond1550e")
    hammond1550e(part, boxColor);

  if(type == "hammond1550f")
    hammond1550f(part, boxColor);

  if(type == "hammond1550g")
    hammond1550g(part, boxColor);

  if(type == "hammond1550h")
    hammond1550h(part, boxColor);

  if(type == "hammond1550j")
    hammond1550j(part, boxColor);

  if(type == "hammond1550k")
    hammond1550k(part, boxColor);

  if(type == "hammond1550l")
    hammond1550l(part, boxColor);

  if(type == "hammond1550m")
    hammond1550m(part, boxColor);

  if(type == "hammond1550n")
    hammond1550n(part, boxColor);

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
    outerLength, outerWidth, outerHeight, lidHeight,
    innerLength, innerWidth, innerHeight,
    postWidth, holeDiameter, xOffsetHole, yOffsetHole,
    outerDiameter,
    part, boxColor);
}

module hammond1550b(part="both", boxColor="grey") {
  outerLength = 114.50;
  outerWidth = 64;
  outerHeight = 30.1;
  lidHeight = 4;

  innerLength = 111.50;
  innerWidth = 60.58;
  innerHeight = 27.1;

  postWidth = 6.5;
  holeDiameter = 3.5;

  xOffsetHole = 5;
  yOffsetHole = 5;

  outerDiameter = 4;

  hammond(
    outerLength, outerWidth, outerHeight, lidHeight,
    innerLength, innerWidth, innerHeight,
    postWidth, holeDiameter, xOffsetHole, yOffsetHole,
    outerDiameter,
    part, boxColor);
}

module hammond1550c(part="both", boxColor="grey") {
  outerLength = 115;
  outerWidth = 90;
  outerHeight = 55.1;
  lidHeight = 4;

  innerLength = 111.40;
  innerWidth = 86.4;
  innerHeight = 51.8;

  postWidth = 6.5;
  holeDiameter = 3.5;

  xOffsetHole = 5;
  yOffsetHole = 5;

  outerDiameter = 4;

  hammond(
    outerLength, outerWidth, outerHeight, lidHeight,
    innerLength, innerWidth, innerHeight,
    postWidth, holeDiameter, xOffsetHole, yOffsetHole,
    outerDiameter,
    part, boxColor);
}

module hammond1550d(part="both", boxColor="grey") {
  outerLength = 114.5;
  outerWidth = 64;
  outerHeight = 55.1;
  lidHeight = 4;

  innerLength = 110.90;
  innerWidth = 60.4;
  innerHeight = 52.1;

  postWidth = 6.5;
  holeDiameter = 3.5;

  xOffsetHole = 5;
  yOffsetHole = 5;

  outerDiameter = 4;

  hammond(
    outerLength, outerWidth, outerHeight, lidHeight,
    innerLength, innerWidth, innerHeight,
    postWidth, holeDiameter, xOffsetHole, yOffsetHole,
    outerDiameter,
    part, boxColor);
}

module hammond1550e(part="both", boxColor="grey") {
  outerLength = 171;
  outerWidth = 121;
  outerHeight = 55.1;
  lidHeight = 4;

  innerLength = 167;
  innerWidth = 117;
  innerHeight = 51.1;

  postWidth = 6.5;
  holeDiameter = 3.5;

  xOffsetHole = 5;
  yOffsetHole = 5;

  outerDiameter = 4;

  hammond(
    outerLength, outerWidth, outerHeight, lidHeight,
    innerLength, innerWidth, innerHeight,
    postWidth, holeDiameter, xOffsetHole, yOffsetHole,
    outerDiameter,
    part, boxColor);
}

module hammond1550f(part="both", boxColor="grey") {
  outerLength = 171;
  outerWidth = 121;
  outerHeight = 105.1;
  lidHeight = 4;

  innerLength = 167;
  innerWidth = 117;
  innerHeight = 101.1;

  postWidth = 6.5;
  holeDiameter = 3.5;

  xOffsetHole = 5;
  yOffsetHole = 5;

  outerDiameter = 4;

  hammond(
    outerLength, outerWidth, outerHeight, lidHeight,
    innerLength, innerWidth, innerHeight,
    postWidth, holeDiameter, xOffsetHole, yOffsetHole,
    outerDiameter,
    part, boxColor);
}

module hammond1550g(part="both", boxColor="grey") {
  outerLength = 222;
  outerWidth = 146;
  outerHeight = 55.1;
  lidHeight = 4;

  innerLength = 218;
  innerWidth = 142;
  innerHeight = 51.1;

  postWidth = 6.5;
  holeDiameter = 3.5;

  xOffsetHole = 5;
  yOffsetHole = 5;

  outerDiameter = 4;

  hammond(
    outerLength, outerWidth, outerHeight, lidHeight,
    innerLength, innerWidth, innerHeight,
    postWidth, holeDiameter, xOffsetHole, yOffsetHole,
    outerDiameter,
    part, boxColor);
}

module hammond1550h(part="both", boxColor="grey") {
  outerLength = 222;
  outerWidth = 146;
  outerHeight = 105.1;
  lidHeight = 4;

  innerLength = 218;
  innerWidth = 142;
  innerHeight = 101.1;

  postWidth = 6.5;
  holeDiameter = 3.5;

  xOffsetHole = 5;
  yOffsetHole = 5;

  outerDiameter = 4;

  hammond(
    outerLength, outerWidth, outerHeight, lidHeight,
    innerLength, innerWidth, innerHeight,
    postWidth, holeDiameter, xOffsetHole, yOffsetHole,
    outerDiameter,
    part, boxColor);
}

module hammond1550j(part="both", boxColor="grey") {
  outerLength = 275;
  outerWidth = 175;
  outerHeight = 66.6;
  lidHeight = 4;

  innerLength = 270;
  innerWidth = 170;
  innerHeight = 61.6;

  postWidth = 6.5;
  holeDiameter = 3.5;

  xOffsetHole = 5;
  yOffsetHole = 5;

  outerDiameter = 4;

  hammond(
    outerLength, outerWidth, outerHeight, lidHeight,
    innerLength, innerWidth, innerHeight,
    postWidth, holeDiameter, xOffsetHole, yOffsetHole,
    outerDiameter,
    part, boxColor);
}

module hammond1550k(part="both", boxColor="grey") {
  outerLength = 140;
  outerWidth = 102;
  outerHeight = 76.6;
  lidHeight = 4;

  innerLength = 136;
  innerWidth = 98;
  innerHeight = 73.3;

  postWidth = 6.5;
  holeDiameter = 3.5;

  xOffsetHole = 5;
  yOffsetHole = 5;

  outerDiameter = 4;

  hammond(
    outerLength, outerWidth, outerHeight, lidHeight,
    innerLength, innerWidth, innerHeight,
    postWidth, holeDiameter, xOffsetHole, yOffsetHole,
    outerDiameter,
    part, boxColor);
}

module hammond1550l(part="both", boxColor="grey") {
  outerLength = 165;
  outerWidth = 127.4;
  outerHeight = 76.5;
  lidHeight = 4;

  innerLength = 159.9;
  innerWidth = 123.4;
  innerHeight = 72.5;

  postWidth = 6.5;
  holeDiameter = 3.5;

  xOffsetHole = 5;
  yOffsetHole = 5;

  outerDiameter = 4;

  hammond(
    outerLength, outerWidth, outerHeight, lidHeight,
    innerLength, innerWidth, innerHeight,
    postWidth, holeDiameter, xOffsetHole, yOffsetHole,
    outerDiameter,
    part, boxColor);
}

module hammond1550m(part="both", boxColor="grey") {
  outerLength = 120.4;
  outerWidth = 100.4;
  outerHeight = 35.37;
  lidHeight = 4;

  innerLength = 116.8;
  innerWidth = 96.8;
  innerHeight = 32.1;

  postWidth = 6.5;
  holeDiameter = 3.5;

  xOffsetHole = 5;
  yOffsetHole = 5;

  outerDiameter = 4;

  hammond(
    outerLength, outerWidth, outerHeight, lidHeight,
    innerLength, innerWidth, innerHeight,
    postWidth, holeDiameter, xOffsetHole, yOffsetHole,
    outerDiameter,
    part, boxColor);
}

module hammond1550n(part="both", boxColor="grey") {
  outerLength = 250.1;
  outerWidth = 250.2;
  outerHeight = 101.3;
  lidHeight = 4;

  innerLength = 245.2;
  innerWidth = 245.2;
  innerHeight = 96.3;

  postWidth = 6.5;
  holeDiameter = 3.5;

  xOffsetHole = 5;
  yOffsetHole = 5;

  outerDiameter = 4;

  hammond(
    outerLength, outerWidth, outerHeight, lidHeight,
    innerLength, innerWidth, innerHeight,
    postWidth, holeDiameter, xOffsetHole, yOffsetHole,
    outerDiameter,
    part, boxColor);
}

module hammond1550p(part="both", boxColor="grey") {
  outerLength = 80.1;
  outerWidth = 55.2;
  outerHeight = 25.1;
  lidHeight = 4;

  innerLength = 78.5;
  innerWidth = 52;
  innerHeight = 22.1;

  postWidth = 6.5;
  holeDiameter = 3.5;

  xOffsetHole = 5;
  yOffsetHole = 5;

  outerDiameter = 4;

  hammond(
    outerLength, outerWidth, outerHeight, lidHeight,
    innerLength, innerWidth, innerHeight,
    postWidth, holeDiameter, xOffsetHole, yOffsetHole,
    outerDiameter,
    part, boxColor);
}

module hammond1550q(part="both", boxColor="grey") {
  outerLength = 60;
  outerWidth = 55;
  outerHeight = 30.1;
  lidHeight = 4;

  innerLength = 57;
  innerWidth = 51;
  innerHeight = 26.8;

  postWidth = 6.5;
  holeDiameter = 3.5;

  xOffsetHole = 5;
  yOffsetHole = 5;

  outerDiameter = 4;

  hammond(
    outerLength, outerWidth, outerHeight, lidHeight,
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

  innerLength = 89.10;
  innerWidth = 35;
  innerHeight = 27.4;

  postWidth = 6.5;
  holeDiameter = 4;

  xOffsetHole = 5;
  yOffsetHole = 5;

  outerDiameter = 4;

  hammond(
    outerLength, outerWidth, outerHeight, lidHeight,
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

  innerLength = 108.1;
  innerWidth = 56.5;
  innerHeight = 27;

  postWidth = 6;
  holeDiameter = 4;

  xOffsetHole = 5;
  yOffsetHole = 5;

  outerDiameter = 4;

  hammond(
    outerLength, outerWidth, outerHeight, lidHeight,
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

  innerLength = 96.2;
  innerWidth = 46.2;
  innerHeight = 21;

  postWidth = 6.5;
  holeDiameter = 4;

  xOffsetHole = 5;
  yOffsetHole = 5;

  outerDiameter = 4;

  hammond(
    outerLength, outerWidth, outerHeight, lidHeight,
    innerLength, innerWidth, innerHeight,
    postWidth, holeDiameter, xOffsetHole, yOffsetHole,
    outerDiameter,
    part, boxColor);
}

module hammond(
  outerLength, outerWidth, outerHeight, lidHeight,
  innerLength, innerWidth, innerHeight,
  postWidth, holeDiameter, xOffsetHole, yOffsetHole,
  outerDiameter,
  part, boxColor)
{
  holeRadius = holeDiameter / 2;
  outerRadius = outerDiameter / 2;
  bodyHeight = outerHeight - lidHeight;

  xOffset = (outerLength - innerLength) / 2;
  yOffset = (outerWidth - innerWidth) / 2;
  zOffset = (outerHeight - innerHeight) / 2;

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
    group() {
      difference() {
        union() {
          roundedBody(lidHeight);
          translate([0, 0, zOffset])
            screwPosts(lidHeight - zOffset);
        }

        translate([0, 0, zOffset])
          screwHoles(lidHeight - zOffset);
      }

      cube(0); // So wer are able to group
    }
  }

  module body() {
    group() {
      difference() {
        group() {
          roundedBody(bodyHeight);
          translate([0, 0, zOffset])
            screwPosts(bodyHeight - zOffset);
        }

        translate([0, 0, zOffset])
          screwHoles(bodyHeight - zOffset);
      }

      cube(0); // So wer are able to group
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

    group() {
      for(i = [0:3])
        translate(posts[i])
          rotate([0, 0, 90 * i])
            screwPost(height);
    }
  }

  module screwHoles(height) {
    holes = [
      [xOffsetHole, yOffsetHole, 0],
      [xOffsetHole, outerWidth - yOffsetHole, 0],
      [outerLength - xOffsetHole, outerWidth - yOffsetHole, 0],
      [outerLength - xOffsetHole, yOffsetHole, 0]
    ];

    group() {
      for(pos = holes)
        translate(pos)
          cylinder(r=holeRadius, h=height + 1);
    }
  }
}