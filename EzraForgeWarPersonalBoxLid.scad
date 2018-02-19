length = 77;
width = 72;
height = 3;
rimHeight = 5;
rimThickness = 2;
notchLength = 25;
//Based on washer size:
washerDiameter = 16.25;
washerHeight = 1.4;
rimPadding = 1;
totalHeight = height + rimHeight;

wallThickness = 2;
workerBoxWidth = 14.3;
fingerNotchSize = 6;
coloredCubesBoxLength = 27;

totalLength = length + rimThickness * 2 + rimPadding;
totalWidth = width + rimThickness * 2 + rimPadding;
difference() {
    cube([totalLength, totalWidth, height + rimHeight]);
    translate([rimThickness, rimThickness, height])
        cube([length + rimPadding, width + rimPadding, rimHeight]);
    
    translate([totalLength/2 - notchLength/2, 0, 0])
        cube([notchLength, rimThickness, totalHeight]);
    translate([totalLength/2 - notchLength/2, totalWidth-rimThickness, 0])
        cube([notchLength, rimThickness, totalHeight]);


    translate([0, totalWidth/2 - notchLength/2, 0])
        cube([rimThickness, notchLength, totalHeight]);
    translate([totalLength-rimThickness, totalWidth/2 - notchLength/2, 0])
        cube([rimThickness, notchLength, totalHeight]);
    
    translate([
        wallThickness * 2 + coloredCubesBoxLength + fingerNotchSize + washerDiameter/2 + rimThickness,
        width - (wallThickness + workerBoxWidth * 2 + wallThickness * 2 + washerDiameter/2 + rimThickness),
        height - washerHeight])
        cylinder(washerHeight, d=washerDiameter);
}
