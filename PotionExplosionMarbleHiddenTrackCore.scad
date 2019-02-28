//TODO: Get correct length
length = 123;
diameter = 18;
wallThickness = 3;
angle = 5;
floorThickness = 10;
heightStepDown = .2;
offset = diameter + 5;
height = 40.42 + heightStepDown + offset;
washerDiameter = 16.25;
washerHeight = 1.4;
washerHeightOffset = 1;
magnetHeightOffset = 1;
magnetBaseInnerDiameter = 15.4;
frontMagnetBaseInnerDiameter = magnetBaseInnerDiameter + .3;
magnetHeight = 4.0;
width = diameter + wallThickness * 2;
centerOfConnectorX = 50;
centerOfConnectorY = 10;
centerOfBackConnectorX = width/2;
echo(centerOfBackConnectorX);
lidHeight = 2;
backstopHeight = 10;

module Track(useLeftConnector, useRightConnector) {
    difference(){

        cube([length, width, height]);
        
        translate([wallThickness, wallThickness, height - offset])
            rotate([0, angle, 0])
                cube([length + wallThickness, width - wallThickness * 2, height]);
        
        translate([wallThickness, diameter/2 + wallThickness, height - offset + 1 ])
            rotate([90 + angle, 0, 90])
                cylinder(length + 3, d=diameter);
        if(useLeftConnector)
            translate([centerOfConnectorX, washerHeight, centerOfConnectorY])
                rotate([90, 90, 0])
                    cylinder(washerHeight, d=washerDiameter);
        if(useRightConnector)
        translate([centerOfConnectorX, width, centerOfConnectorY])
            rotate([90, 90, 0])
                cylinder(magnetHeight, d=magnetBaseInnerDiameter);
        
    //    translate([0, centerOfBackConnectorX, centerOfConnectorY])
    //        rotate([90, 0, 90])
    //            cylinder(magnetHeight, d=magnetBaseInnerDiameter);
        
        translate([length - magnetHeight, centerOfBackConnectorX, centerOfConnectorY])
            rotate([90, 0, 90])
                cylinder(magnetHeight, d=frontMagnetBaseInnerDiameter);


        translate([wallThickness,wallThickness/2,height - (backstopHeight + lidHeight)])
            cube([length,width - wallThickness,lidHeight]);
    }

    //translate([length, 0, 0])
    //    import("C:/Code/Git/3DPrint/PotionExplosionMarbleTrack.stl");

}