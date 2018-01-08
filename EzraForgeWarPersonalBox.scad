length = 83;
width = 78;
height = 23;
magnetPadding = 15;
magnetBaseInnerDiameter = 13.1;
magnetHeight = 2.7;

workerBoxLength = 55;
workerBoxHeight = 13;
workerBoxWidth = 14.3;

wallThickness = 2;

fingerNotchSize = 6;

meepleBoxWidth = 21;
meepleBoxLength = 32;
meepleBoxHeight = 20;

whiteCubeBoxWidth = 20;
whiteCubeBoxLength = 20;
whiteCubeBoxHeight = 5.3;

coloredCubesBoxWidth = 27;
coloredCubesBoxLength = 17;
coloredCubesBoxHeight = 10;

cylinderDiameter = 15.8;
cylinderBoxLength = 24;

difference(){
    cube([length, width, height]);
    
    //workers 1 x 5, 57 long x workerBoxWidth wide x 13 high
    translate([wallThickness, wallThickness, height - workerBoxHeight])
        cube([workerBoxLength, workerBoxWidth, workerBoxHeight]);
    translate([wallThickness + workerBoxLength, wallThickness, height - (workerBoxHeight/2)])
        cube([fingerNotchSize, workerBoxWidth, workerBoxHeight / 2]);
    
    
    //workers 1 x 5, 57 long x workerBoxWidth wide x 13 high
    translate([wallThickness, wallThickness * 2 + workerBoxWidth, height - workerBoxHeight])
        cube([workerBoxLength, workerBoxWidth, workerBoxHeight]); 
    translate([wallThickness + workerBoxLength, wallThickness * 2 + workerBoxWidth, height - (workerBoxHeight/2)])
        cube([fingerNotchSize, workerBoxWidth, workerBoxHeight / 2]);
    
    //meeples x 3, 32 x 21 x 20 high
    translate([length - (meepleBoxWidth + wallThickness), width - (meepleBoxLength + wallThickness), height - meepleBoxHeight])
        cube([meepleBoxWidth, meepleBoxLength, meepleBoxHeight]);
    translate([length - (meepleBoxWidth + wallThickness), width - (meepleBoxLength + wallThickness + fingerNotchSize), height - (meepleBoxHeight/2)])
        cube([meepleBoxWidth, fingerNotchSize, meepleBoxHeight/2]);
    
    
    //white tiny cubes x 5 (big open tray) 20x20x5high
    translate([length / 2 - (whiteCubeBoxLength/2), width - (whiteCubeBoxWidth + wallThickness), height - whiteCubeBoxHeight])
        cube([whiteCubeBoxLength, whiteCubeBoxWidth, whiteCubeBoxHeight]);
    
    //colored normal cubes, 27 x 17 x 10    
    translate([wallThickness, width - (coloredCubesBoxWidth + wallThickness), height - coloredCubesBoxHeight])
        cube([coloredCubesBoxLength, coloredCubesBoxWidth, coloredCubesBoxHeight]);
    translate([wallThickness, width - (coloredCubesBoxWidth + wallThickness + fingerNotchSize), height - (coloredCubesBoxHeight/2)])
        cube([coloredCubesBoxLength, fingerNotchSize, coloredCubesBoxHeight/2]);
    
    
    translate([wallThickness * 2 + workerBoxLength + fingerNotchSize, wallThickness, height - (cylinderDiameter/2)])
        cube([cylinderDiameter, cylinderBoxLength + fingerNotchSize, cylinderDiameter/2]);
        intersection() {
            translate([wallThickness * 2 + workerBoxLength + fingerNotchSize, wallThickness, height - (cylinderDiameter)])
                cube([cylinderDiameter, cylinderBoxLength, cylinderDiameter/2]);
            translate([wallThickness * 2 + workerBoxLength + fingerNotchSize + cylinderDiameter/2,wallThickness + cylinderBoxLength, height - (cylinderDiameter/2)])
                rotate([90, 90, 0])
                    cylinder(cylinderBoxLength, d=cylinderDiameter);
    }
    
    
    translate([
        length/2,
        wallThickness + workerBoxWidth * 2 + wallThickness * 2 + magnetBaseInnerDiameter/2,
        height - magnetHeight])
        cylinder(magnetHeight, d=magnetBaseInnerDiameter);

}

    