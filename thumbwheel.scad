

module thumbWheel() {
    // http://www.bourns.com/docs/Product-Datasheets/3352.pdf
    wheelDiameter = 8.89;
    wheelRadius = wheelDiameter / 2;
    wheelHeight = 1.9;
    
    boardDiameter = 7.62;
    boardRadius = boardDiameter / 2;
    boardHeight = 1.91;
    boardLength = 9.53;
    
    cylinder(r=boardRadius, h=boardHeight);
    translate([-boardDiameter / 2, 0, 0])
        cube([boardDiameter, boardLength - boardRadius, boardHeight]);
    
    translate([0, 0, boardHeight])
        cylinder(r=wheelRadius, h=wheelHeight);
}