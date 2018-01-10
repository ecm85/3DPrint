length = 85;
width = 85;
height = 3;
rimHeight = 5;
rimThickness = 2;

notchLength = 25;

//Based on washer size:
washerDiameter = 16.25;
washerHeight = 1.4;
rimPadding = 1;

totalLength = length + rimThickness * 2 + rimPadding;
totalWidth = width + rimThickness * 2 + rimPadding;
totalHeight = height + rimHeight;
difference() {
    cube([totalLength, totalWidth, totalHeight]);
    translate([rimThickness, rimThickness, height])
        cube([length + rimPadding, width + rimPadding, rimHeight]);
    
    translate([totalLength/2 - notchLength/2, 0, 1])
        cube([notchLength, rimThickness, totalHeight]);
    translate([totalLength/2 - notchLength/2, totalWidth-rimThickness, 0])
        cube([notchLength, rimThickness, totalHeight]);


    translate([0, totalWidth/2 - notchLength/2, 0])
        cube([rimThickness, notchLength, totalHeight]);
    translate([totalLength-rimThickness, totalWidth/2 - notchLength/2, 0])
        cube([rimThickness, notchLength, totalHeight]);

    translate([
        totalLength/2,
        totalWidth/3,
        height - washerHeight])
        cylinder(washerHeight, d=washerDiameter);
    translate([
        totalLength/2,
        totalWidth * 2/3,
        height - washerHeight])
        cylinder(washerHeight, d=washerDiameter);
}
