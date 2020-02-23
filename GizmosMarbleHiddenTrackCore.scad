//TODO: Get correct length
length = 115;
diameter = 18;
wallThickness = 3;
angle = 5;
floorThickness = 10;
heightStepDown = .2;
offset = diameter + 10;
height = 40.42 + heightStepDown + offset;
magnetHeightOffset = 1;
magnetBaseInnerDiameter = 15.4;
frontMagnetBaseInnerDiameter = magnetBaseInnerDiameter + .3;
magnetHeight = 4.0;
width = diameter + wallThickness + 85;
centerOfConnectorX = 50;
centerOfConnectorY = 10;
sideCenterOfConnectorY = height - 30;
centerOfBackConnectorX = width/2;
echo(centerOfBackConnectorX);
lidHeight = 10;
backstopHeight = 10;

module Track(useLeftConnector, useRightConnector) {
//    union() {
    difference(){

        cube([length, width, height]);
        
        translate([wallThickness, width/2 - diameter/2 - 5, height - offset])
            rotate([0, angle, 0])
                cube([length + wallThickness, diameter + 10, height]);
         
//     translate([wallThickness, wallThickness, height - (backstopHeight + lidHeight + 5)])
//            cube([length + wallThickness, width - (wallThickness *2), 5]);       
        translate([wallThickness, width/2, height - offset + 1 ])
            rotate([90 + angle, 0, 90])
                cylinder(length + 3, d=diameter);
        if(useLeftConnector)
            translate([centerOfConnectorX, magnetHeight, sideCenterOfConnectorY])
                rotate([90, 90, 0])
                    cylinder(magnetHeight, d=magnetBaseInnerDiameter);
        if(useRightConnector)
        translate([centerOfConnectorX, width, sideCenterOfConnectorY])
            rotate([90, 90, 0])
                cylinder(magnetHeight, d=magnetBaseInnerDiameter);
        
    //    translate([0, centerOfBackConnectorX, centerOfConnectorY])
    //        rotate([90, 0, 90])
    //            cylinder(magnetHeight, d=magnetBaseInnerDiameter);
        
        translate([length - magnetHeight, centerOfBackConnectorX, centerOfConnectorY])
            rotate([90, 0, 90])
                cylinder(magnetHeight, d=frontMagnetBaseInnerDiameter);


        translate([wallThickness,wallThickness,height - (backstopHeight + lidHeight)])
            cube([length,width - wallThickness * 2,lidHeight]);
    }

    //translate([length, 0, 0])
    //    import("C:/Code/Git/3DPrint/PotionExplosionMarbleTrack.stl");

}
//}