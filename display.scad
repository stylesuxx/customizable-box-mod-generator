/**
 * Available displays:
 * 
 * Seed Technology:
 * + http://media.digikey.com/pdf/Data%20Sheets/Seeed%20Technology/114990163_Web.pdf
 */

//display("seedVoltMeter");

module display(type, holes=true) {
    if(type == "seedVoltMeter")
        seedVoltMeter(holes);
}

module seedVoltMeter(holes=true) {
    displayLength = 24;
    displayWidth = 11;
    displayHeight = (holes) ? 9 : 10;
    
    boardLength = 30;
    boardWidth = 12;
    boardHeight = 2;
    
    padding = (boardLength - displayLength) / 2;

    translate([-boardLength / 2, -displayWidth / 2, 0])
        group() {
            cube([boardLength, boardWidth, boardHeight]);
            
            translate([padding, 0, boardHeight])
                cube([displayLength, displayWidth, displayHeight]);
        }
}