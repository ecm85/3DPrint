include<ColonistsGoodsLib.scad>
wallThickness = 3;
length = 65;
width = (singleGoodPileLength + wallThickness) * 4 + wallThickness * 3;
echo(width);

height = 3;
rimHeight = 5;
rimThickness = 2;
notchLength = 25;
//Based on washer size:
washerDiameter = 16.25;
washerHeight = 1.4;
rimPadding = 1.5;
totalHeight = height + rimHeight;

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
    
    translate([totalLength/2, totalWidth/2, height - washerHeight])
        cylinder(washerHeight, d=washerDiameter);
}
