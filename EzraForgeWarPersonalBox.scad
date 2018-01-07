length = 76;
width = 71;
height = 30;
magnetPadding = 15;
magnetBaseInnerDiameter = 13.1;
magnetHeight = 2.7;
difference(){
    cube([length, width, height]);
    
    //workers 1 x 5, 55 long x 14.3 wide x 13 high
    translate([2, 2, height - 13])
        cube([55, 14.3, 13]); 
    
    //workers 1 x 5, 55 long x 14.3 wide x 13 high
    translate([2, 2 + 2 + 14.3, height - 13])
        cube([55, 14.3, 13]); 
    
    //meeples x 3, 32 x 20 x 20 high
    translate([2 + 2 + 2 + 20 + 27, width - (32 + 2), height - 20])
        cube([20, 32, 20]);
    
    //white tiny cubes x 5 (big open tray) 20x20x5high
    translate([length / 2 - (20/2), width - (20 + 2), height - 5])
        cube([20, 20, 5]);
    
    //colored normal cubes, 27 x 17 x 10    
    translate([2, width - (27 + 2), height - 10])
        cube([17, 27, 10]);
    
    cylinderDiameter = 15;
    translate([2 + 2 + 55, 2, height - (cylinderDiameter/2)])
        cube([cylinderDiameter, 24, cylinderDiameter/2]);
        intersection() {
            translate([2 + 2 + 55, 2, height - (cylinderDiameter)])
                cube([cylinderDiameter, 24, cylinderDiameter/2]);
            translate([2 + 2 + 55 + cylinderDiameter/2,2 + 24, height - (cylinderDiameter/2)])
                rotate([90, 90, 0])
                    cylinder(24, d=cylinderDiameter);
    }
    
    
    translate([length/2, 2 + 14.3 + 2 + 14.3 + 1 + magnetBaseInnerDiameter/2, height - magnetHeight])
        cylinder(magnetHeight, d=magnetBaseInnerDiameter);

}

    