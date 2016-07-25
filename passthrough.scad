/**
 * Available Plugs:
 * 
 * + Switchcraft Unmated Power Jack: http://www.switchcraft.com/Documents/switchcraft_sealed_unmated_power_jack_npb_608.pdf
 */
 $fn = 360;
passthrough("jack608");

module passthrough(type, partColor="silver", holes="true") {
  if(type == "jack608")
    jack(partColor, holes);
}

module jack(jackColor="silver", holes="true") {
  threadHeight = 8.26;
  threadDiameter = 8.13;
  ringHeight = 1.4;
  ringDiameter = 11.94;
  bodyHeight = 13.6;
  bodyDiameter = 9.65;
  connectorHeight = 5.18;
  connectorDiameter = 6;
  holeDiameter = 7.24;

  bodyRadius = bodyDiameter / 2;
  threadRadius = threadDiameter / 2;
  ringRadius = ringDiameter / 2;
  connectorRadius = connectorDiameter / 2;
  holeRadius = holeDiameter / 2;

  translate([0, 0, -connectorHeight - bodyHeight - ringHeight])
    color(jackColor)
      difference() {
        group() {
          cylinder(r=connectorRadius, h = connectorHeight);

          translate([0, 0, connectorHeight])
            cylinder(r=bodyRadius, h = bodyHeight);

          translate([0, 0, connectorHeight + bodyHeight])
            cylinder(r=ringRadius, h = ringHeight);

          translate([0, 0, connectorHeight + bodyHeight + ringHeight])
            cylinder(r=threadRadius, h = threadHeight);
        }
        
        if(holes)
          translate([0, 0, connectorHeight + 1])
            cylinder(r=holeRadius, bodyHeight + ringHeight + threadHeight + 2);
      }
}
