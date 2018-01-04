length = 85;
width = 85;
height = 4;
rimHeight = 5;
rimThickness = 2;

//Based on washer size:
washerDiameter = 16.25;
washerHeight = 1.4;
rimPadding = 1;

totalLength = length + rimThickness * 2 + rimPadding;
totalWidth = width + rimThickness * 2 + rimPadding;
difference() {
    cube([totalLength, totalWidth, height + rimHeight]);
    translate([totalLength/2, totalWidth/2, height - washerHeight])
        cylinder(washerHeight, d=washerDiameter);
    translate([rimThickness, rimThickness, height])
        cube([length + rimPadding, width + rimPadding, rimHeight]);
}
