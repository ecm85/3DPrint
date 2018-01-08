length = 77;
width = 72;
height = 23;
magnetPadding = 15;
magnetBaseInnerDiameter = 13.1;
magnetHeight = 2.7;

workerBoxLength = 55;
workerBoxHeight = 13;
workerBoxWidth = 14.3;

wallThickness = 2;

fingerNotchSize = 6;

meepleBoxWidth = 32;
meepleBoxLength = 21;
meepleBoxHeight = 20;

whiteCubeBoxWidth = 11;
whiteCubeBoxLength = 23;
whiteCubeBoxHeight = 5.3;

coloredCubesBoxWidth = 17;
coloredCubesBoxLength = 27;
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
    translate([
        wallThickness,
        wallThickness * 2 + workerBoxWidth,
        height - workerBoxHeight])
        cube([workerBoxLength, workerBoxWidth, workerBoxHeight]); 
    translate([
        wallThickness + workerBoxLength,
        wallThickness * 2 + workerBoxWidth,
        height - (workerBoxHeight/2)])
        cube([fingerNotchSize, workerBoxWidth, workerBoxHeight / 2]);
    
    //meeples x 3, 32 x 21 x 20 high
    translate([
        length - (meepleBoxWidth + wallThickness),
        width - (meepleBoxLength + wallThickness),
        height - meepleBoxHeight])
        cube([meepleBoxWidth, meepleBoxLength, meepleBoxHeight]);
    translate([
        length - (meepleBoxWidth + wallThickness + fingerNotchSize),
        width - (meepleBoxLength + wallThickness),
        height - (meepleBoxHeight/2)])
        cube([fingerNotchSize, meepleBoxLength, meepleBoxHeight/2]);
    
    
    //white tiny cubes x 5 (big open tray) 20x20x5high
    translate([
        length - (whiteCubeBoxLength + wallThickness),
        width - (wallThickness * 2 + meepleBoxWidth),
        height - whiteCubeBoxHeight])
        cube([whiteCubeBoxLength, whiteCubeBoxWidth, whiteCubeBoxHeight]);
    
    //colored normal cubes, 27 x 17 x 10    
    translate([
        wallThickness,
        wallThickness + workerBoxWidth * 2 + wallThickness * 2,
        height - coloredCubesBoxHeight])
        cube([coloredCubesBoxLength, coloredCubesBoxWidth, coloredCubesBoxHeight]);
    translate([
        wallThickness + coloredCubesBoxLength,
        wallThickness + workerBoxWidth * 2 + wallThickness * 2,
        height - (coloredCubesBoxHeight/2)])
        cube([fingerNotchSize, coloredCubesBoxWidth, coloredCubesBoxHeight/2]);
    
    //disks
    translate([
        wallThickness,
        width - (cylinderDiameter + wallThickness),
        height - (cylinderDiameter/2)])
        cube([cylinderBoxLength + fingerNotchSize, cylinderDiameter, cylinderDiameter/2]);
    translate([
        wallThickness,
        width - (wallThickness + cylinderDiameter/2),
        height - (cylinderDiameter/2)])
        rotate([0, 90, 0])
            cylinder(cylinderBoxLength, d=cylinderDiameter);

    //magnet
    translate([
        wallThickness * 2 + coloredCubesBoxLength + fingerNotchSize + magnetBaseInnerDiameter/2 ,
        wallThickness + workerBoxWidth * 2 + wallThickness * 2 + magnetBaseInnerDiameter/2,
        height - magnetHeight])
        cylinder(magnetHeight, d=magnetBaseInnerDiameter);

}

    