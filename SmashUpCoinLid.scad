length = 47; 
width = 56;
height = 3;
rimHeight = 5;
rimThickness = 2;
notchLength = 25;
//Based on washer size:
washerDiameter = 16.25;
washerHeight = 1.4;
rimPadding = 1;
totalHeight = height + rimHeight;

totalLength = length + rimThickness * 2 + rimPadding;
totalWidth = width + rimThickness * 2 + rimPadding;
extraLidForCircles = 4.5;
union()
{
    difference() {
        translate([0, -extraLidForCircles, 0])
            cube([totalLength, totalWidth + 2 * extraLidForCircles, height]);
        translate([totalLength/2, totalWidth/2, height - washerHeight])
            cylinder(washerHeight, d=washerDiameter);
    }
    
    difference() {
        translate([0, 0, height])
            cube([totalLength, totalWidth, rimHeight]);
        translate([rimThickness, rimThickness, height])
            cube([length + rimPadding, width + rimPadding, rimHeight]);
        LeftCircles();
        RightCircles();
    }
    
    difference(){
        union()
        {
            translate([0, -rimThickness, 0])
                LeftCircles();
            translate([0, rimThickness, 0])
                RightCircles();
        }
        translate([0, 0, height])
            cube([totalLength, totalWidth, rimHeight]);
        LeftCircles();
        RightCircles();
    }
}

module LeftCircles()
{
fiftyCoinHeight = 16.7 + .5;
oneCoinSecondHeight = 25.2 + .5;


coinOffset = 2.5;
fiftyCoinDiameter = 34.1 + 1;
oneCoinDiameter = 20.1 + 1;

spaceBetweenCircles = 1.5;
    translate([totalLength/2, fiftyCoinDiameter/2 - coinOffset, height])
        cylinder(rimHeight, d=fiftyCoinDiameter);
}

module RightCircles()
{
fiftyCoinHeight = 16.7 + .5;
oneCoinSecondHeight = 25.2 + .5;


coinOffset = 2.5;
fiftyCoinDiameter = 34.1 + 1;
oneCoinDiameter = 20.1 + 1;

spaceBetweenCircles = 1.5;
        
        translate([oneCoinDiameter/2 + spaceBetweenCircles + rimThickness + rimPadding, totalWidth - (oneCoinDiameter/2 - coinOffset), height])
        cylinder(rimHeight, d=oneCoinDiameter);
    
    translate([totalLength - (oneCoinDiameter/2 + spaceBetweenCircles + rimThickness + rimPadding), totalWidth - (oneCoinDiameter/2 - coinOffset), height])
        cylinder(rimHeight, d=oneCoinDiameter);
}

