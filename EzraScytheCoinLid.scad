length = 111;
width = 65;
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
twentyCoinHeight = 19.2 + .5;
tenCoinHeight = 28.2 + .5;
fiveCoinHeight = 29.1 + .5;
threeCoinHeight = 29.2 + .5;
twoCoinHeight = 28.8 + .5;
oneCoinFirstHeight = 23.3 + .5;
oneCoinSecondHeight = 25.2 + .5;


coinOffset = 2.5;
fiftyCoinDiameter = 34.1 + 1;
twentyCoinDiameter = 30.2 + 1;
tenCoinDiameter = 26.2 + 1;
fiveCoinDiameter = 24.1 + 1;
threeCoinDiameter = 22.1 + 1;
twoCoinDiameter = 20.9 + 1;
oneCoinDiameter = 20.1 + 1;

spaceBetweenCircles = 1.5;
    translate([oneCoinDiameter/2 + spaceBetweenCircles + rimThickness + rimPadding, oneCoinDiameter/2 - coinOffset, height])
            cylinder(rimHeight, d=oneCoinDiameter);

    translate([oneCoinDiameter + twoCoinDiameter/2 + rimThickness + rimPadding + spaceBetweenCircles * 2, twoCoinDiameter/2 - coinOffset, height])
        cylinder(rimHeight, d=twoCoinDiameter);
    
    translate([oneCoinDiameter + twoCoinDiameter + fiveCoinDiameter/2 + rimThickness + rimPadding + spaceBetweenCircles * 3, fiveCoinDiameter/2 - coinOffset, height])
        cylinder(rimHeight, d=fiveCoinDiameter);
    
    translate([oneCoinDiameter + fiveCoinDiameter + twoCoinDiameter + fiftyCoinDiameter/2  + rimThickness + rimPadding + spaceBetweenCircles * 4, fiftyCoinDiameter/2 - coinOffset, height])
        cylinder(rimHeight, d=fiftyCoinDiameter);
}

module RightCircles()
{
fiftyCoinHeight = 16.7 + .5;
twentyCoinHeight = 19.2 + .5;
tenCoinHeight = 28.2 + .5;
fiveCoinHeight = 29.1 + .5;
threeCoinHeight = 29.2 + .5;
twoCoinHeight = 28.8 + .5;
oneCoinFirstHeight = 23.3 + .5;
oneCoinSecondHeight = 25.2 + .5;


coinOffset = 2.5;
fiftyCoinDiameter = 34.1 + 1;
twentyCoinDiameter = 30.2 + 1;
tenCoinDiameter = 26.2 + 1;
fiveCoinDiameter = 24.1 + 1;
threeCoinDiameter = 22.1 + 1;
twoCoinDiameter = 20.9 + 1;
oneCoinDiameter = 20.1 + 1;

spaceBetweenCircles = 1.5;
    
    translate([twentyCoinDiameter/2  + rimThickness + rimPadding + spaceBetweenCircles, totalWidth - (twentyCoinDiameter/2 - coinOffset), height])
        cylinder(rimHeight, d=twentyCoinDiameter);
    
    translate([twentyCoinDiameter  + rimThickness + rimPadding + tenCoinDiameter/2 + spaceBetweenCircles * 2, totalWidth - (tenCoinDiameter/2 - coinOffset), height])
        cylinder(rimHeight, d=tenCoinDiameter);
    
    translate([twentyCoinDiameter  + rimThickness + rimPadding + tenCoinDiameter + threeCoinDiameter/2 + spaceBetweenCircles * 3, totalWidth - (threeCoinDiameter/2 - coinOffset), height])
        cylinder(rimHeight, d=threeCoinDiameter);
        
        translate([twentyCoinDiameter  + rimThickness + rimPadding + threeCoinDiameter + tenCoinDiameter + oneCoinDiameter/2 + spaceBetweenCircles * 4, totalWidth - (oneCoinDiameter/2 - coinOffset), height])
        cylinder(rimHeight, d=oneCoinDiameter);
}

