length = 142;
diameter = 18;
wallThickness = 3;
angle = 5;
floorThickness = 10;
height = diameter + floorThickness;
echo(height);
washerDiameter = 16.25;
washerHeight = 1.4;
washerHeightOffset = 1;
backWasherDiameter = washerDiameter + .3;
magnetHeightOffset = 1;
magnetBaseInnerDiameter = 15.4;
magnetHeight = 4.0;
width = diameter + wallThickness * 2;
centerOfConnectorX = 50;
centerOfConnectorY = 10;
centerOfBackConnectorX = width/2;
echo(centerOfBackConnectorX);
echo(width);
difference(){
 cube([length, width, height]);
 translate([0, 0, height])
    rotate([0, angle, 0])
        cube([length + 1, width, height]);
    
    translate([-1, diameter/2 + wallThickness, height + 1])
        rotate([90 + angle, 0, 90])
            cylinder(length - 1, d=diameter);
    translate([centerOfConnectorX, washerHeight, centerOfConnectorY])
        rotate([90, 90, 0])
            cylinder(washerHeight, d=washerDiameter);
    translate([centerOfConnectorX, width, centerOfConnectorY])
        rotate([90, 90, 0])
            cylinder(magnetHeight, d=magnetBaseInnerDiameter);
    translate([0, centerOfBackConnectorX, centerOfConnectorY])
        rotate([90, 0, 90])
            cylinder(washerHeight, d=backWasherDiameter);
}
