length = 80;
width = 80;
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
    translate([2 + 2 + 55, 2, height - 20])
        cube([20, 32, 20]);
    
    //white tiny cubes x 5 (big open tray) 20x20x5high
    translate([2, 14.3 + 14.3 + 2 + 2 + 2 + magnetPadding, height - 5])
        cube([20, 20, 5]);
    
    //colored normal cubes, 27 x 17 x 10    
    translate([2 + 2 + 20, 14.3 + 14.3 + 2 + 2 + 2 + magnetPadding, height - 10])
        cube([27, 17, 10]);
    
    cylinderDiameter = 15;
    translate([2 + 2 + 2 + 20 + 27, 32 + 2 + 2 + magnetPadding, height - (cylinderDiameter/2)])
        cube([24, cylinderDiameter, cylinderDiameter/2]);

    intersection() {
        translate([2 + 2 + 2 + 20 + 27, 32 + 2 + 2 + magnetPadding, height - (cylinderDiameter)])
            cube([24, cylinderDiameter, cylinderDiameter/2]);
        translate([2 + 2 + 2 + 20 + 27, 32 + 2 + 2 + cylinderDiameter/2 + magnetPadding, height - (cylinderDiameter/2)])
            rotate([0, 90, 0])
                cylinder(24, d=cylinderDiameter);
    }
    translate([length/2, width/2, height - magnetHeight])
        cylinder(magnetHeight, d=magnetBaseInnerDiameter);
//        rotate([0, 90, 0])
//            cylinder(24, d=15);

//    cube() //disks x 5 (and make bottom rounded?) 24 length, 14 diameter, 

}

    