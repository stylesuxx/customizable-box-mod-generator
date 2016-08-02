
$fn = 360;

chip("dna75");
//chip("dna75blankedFire");

module chip(type, holes=true, partColor="silver") {
  if(type == "dna75")
    dna75(holes, partColor);

  if(type == "dna75blankedFire")
    dna75(holes, partColor, false);
}

module dna75(holes=true, partColor="silver", fire=true, buttons=false) {
  radiusOuter = 2.5;
  length = 66;
  width = 18;
  height = 1.7;
  diameterHole = 1.7;
  
  usbLength = 8;
  usbWidth = 2.29;
  usbHeight = (holes) ? 6.68 : 6.68 + 1;

  buttonSide = 4.5;
  buttonHeight = 2.9;
  buttonInnerHeight = 3.4;
  buttonInnerRadius = 1.5;

  buttonCutoutRadius = 2;
  fireButtonCutoutRadius = 4;

  topHeight = usbHeight;

  boardHoles = [
    [radiusOuter, 63.33, -1],
    [width - radiusOuter, 63.33, -1],
    [width - radiusOuter, 9.16, -1]
  ];

  fireButton = [width / 2, 63.33, 0];
  buttons = [
    [3.9, 17, 0],
    [width - 3.9, 17, 0]
  ];
  
  bottomParts = [
    [width / 2, length - 15, -height - 3.5],
    [width / 2, 23, -height - 3.5]
  ];
  
  displayLength = 0;
  displayHeight = 0;
  displayWidth = 0;
  display = [0, 0, 0];

  translate([-width / 2, -length / 2, 0]) { 
    if(!holes) {
      color(partColor)
        group() {
          build();
          
          for(pos = buttons)
            translate(pos)
              cylinder(r=buttonCutoutRadius, h=topHeight);
          
          if(fire)
            translate(fireButton)
              cylinder(r=fireButtonCutoutRadius, h=topHeight);
        }
    }
    else
      build();
  }

  module build() {
    board();

    buttons();

    translate([width / 2, 2.29, 0])
      usb();

    for(pos = bottomParts)
      translate(pos)
        bottom();
  }
  
  module display(displayColor) {
    
  }
  
  module bottom(partColor="black") {
    length = 10;
    width = 10;
    height = 3.5;
    
    color(partColor)
      translate([-length / 2, -width / 2, 0])
        cube([length, width, height]);
  }
  
  module usb(usbColor="silver") {
    color(usbColor)
      translate([-usbLength / 2, 0, 0])
        cube([usbLength, usbWidth, usbHeight]);
  }
  
  module buttons() {
    for(pos=buttons)
      translate(pos)
        button();

    translate(fireButton)
      button();
  }

  module button(housingColor="grey", buttonColor="darkgrey") {
    translate([-buttonSide / 2, -buttonSide / 2, 0])
      group() {
        color(housingColor)
          cube([buttonSide, buttonSide, buttonHeight]);

        translate([buttonSide / 2, buttonSide / 2, 0])
          color(buttonColor)
            cylinder(r=buttonInnerRadius, h=buttonInnerHeight);
        /*
        if(!holes)
          translate([side / 2, side / 2, 0])
            color(buttonColor)
              cylinder(r=radius, h=topHeight + 1);
        */
      }
  }

  module board(boardColor="green") {
    radiusHole = diameterHole / 2;

    color(boardColor)
      translate([0, 0, -height])
        difference() {
          hull() {
            cube([width, 1, height]);

            translate([radiusOuter, length - radiusOuter, 0])
              cylinder(r=radiusOuter, h=height);

            translate([width - radiusOuter, length - radiusOuter, 0])
              cylinder(r=radiusOuter, h=height);
          }
          
          if(holes) {
            for(pos = boardHoles)
              translate(pos)
                cylinder(r=radiusHole, h=height + 2);
      }
    }
  }
}