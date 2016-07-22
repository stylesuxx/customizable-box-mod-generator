module renderFull() {
    difference() {
        enclosure(boxType, boxColor);
        
        translate([xOffset_510, yOffset_510, zOffset_510])
            color(boxColor) connector510(type_510_connector, false);
        
        if(enableFireSwitch == "yes")
            translate([xOffsetFireSwitch, yOffsetFireSwitch, zOffsetFireSwitch])
                rotate([xRotateFireSwitch, yRotateFireSwitch, zRotateFireSwitch])
                    color(boxColor) switch(fireSwitchType, false);
        
        if(enableVoltMeter == "yes")
            translate([xOffsetVoltMeter, yOffsetVoltMeter, zOffsetVoltMeter])
                rotate([xRotateVoltMeter, yRotateVoltMeter, zRotateVoltMeter])    
                    color(boxColor) display(voltMeterType, false);
        
        if(enableSled == "yes")
            translate([xOffsetSled, yOffsetSled, zOffsetSled])
                rotate([xRotateSled, yRotateSled, zRotateSled])    
                    sled(sledType, boxColor, false);
    }
}

module visualisation() {
    translate([xOffset_510, yOffset_510, zOffset_510])
        color(color_510_connector) connector510(type_510_connector);

    if(enableFireSwitch == "yes")
        translate([xOffsetFireSwitch, yOffsetFireSwitch, zOffsetFireSwitch])   
            rotate([xRotateFireSwitch, yRotateFireSwitch, zRotateFireSwitch])
                color(fireSwitchColor) switch(fireSwitchType);

    if(enableVoltMeter == "yes")
        translate([xOffsetVoltMeter, yOffsetVoltMeter, zOffsetVoltMeter])
            rotate([xRotateVoltMeter, yRotateVoltMeter, zRotateVoltMeter])    
                color(voltMeterColor) display(voltMeterType);

    if(enableSled == "yes")
            translate([xOffsetSled, yOffsetSled, zOffsetSled])
                rotate([xRotateSled, yRotateSled, zRotateSled])    
                    sled(sledType, sledColor);
}