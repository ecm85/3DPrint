length = 100;
width = 90;
height = 3;
rimHeight = 1.5;
rimThickness = 2;

//Based on washer size:
washerDiameter = 16.25;
washerHeight = 1.4;
rimPadding = 1;

totalLength = length + rimThickness * 2 + rimPadding;
totalWidth = width + rimThickness * 2 + rimPadding;
difference() {
    cube([totalLength, totalWidth, height + rimHeight]);
    translate([totalLength/2, 10 + rimThickness + rimPadding, height - washerHeight])
        cylinder(washerHeight, d=washerDiameter);
    translate([totalLength/2, totalWidth - (rimThickness + 10 + rimPadding), height - washerHeight])
        cylinder(washerHeight, d=washerDiameter);
    translate([rimThickness, rimThickness, height])
        cube([length + rimPadding, width + rimPadding, rimHeight]);
}
