length = 65;
width = 60;
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
extraLidForCircles = 7;

smallCircleDiameter = 19.11 + .5;
smallCircleOffset = 4;

mediumCircleDiameter = 23.11 + .5;
mediumCircleOffset = 4;

largeCircleDiameter = 28.11 + .5;
largeCircleOffset = 5;

spaceBetweenCircles = 3;

union()
{
    difference() {
        translate([-extraLidForCircles, -extraLidForCircles, 0])
            cube([totalLength + 2 * extraLidForCircles, totalWidth + 2 * extraLidForCircles, height]);
        translate([totalLength/2, totalWidth/2, height - washerHeight])
            cylinder(washerHeight, d=washerDiameter);
    }
    
    difference() {
        translate([0, 0, height])
            cube([totalLength, totalWidth, rimHeight]);
        translate([rimThickness, rimThickness, height])
            cube([length + rimPadding, width + rimPadding, rimHeight]);
        RightLengthCircles();
        LeftLengthCircles();
        BottomWidthCircles();
        TopWidthCircles();
    }
    
    difference(){
        union()
        {
            translate([0, -rimThickness, 0])
                LeftLengthCircles();
            translate([0, rimThickness, 0])
                RightLengthCircles();
            translate([rimThickness, 0, 0])
                TopWidthCircles();
            translate([-rimThickness, 0, 0])
                BottomWidthCircles();
        }
        translate([0, 0, height])
            cube([totalLength, totalWidth, rimHeight]);
        RightLengthCircles();
        LeftLengthCircles();
        BottomWidthCircles();
        TopWidthCircles();
    }
}


module LeftLengthCircles()
{
    translate([
        totalLength - (rimThickness + rimPadding + spaceBetweenCircles * 2 + smallCircleDiameter/2),
        smallCircleDiameter/2 - smallCircleOffset,
        height])
        cylinder(rimHeight, d=smallCircleDiameter);
   translate([
        rimThickness + rimPadding + (spaceBetweenCircles * 2 + smallCircleDiameter/2),
        smallCircleDiameter/2 - smallCircleOffset,
        height])
        cylinder(rimHeight, d=smallCircleDiameter);
}

module RightLengthCircles()
{
    translate([
        totalLength - (rimThickness + rimPadding + spaceBetweenCircles * 2 + smallCircleDiameter/2),
        totalWidth - (smallCircleDiameter/2 - smallCircleOffset),
        height])
        cylinder(rimHeight, d=smallCircleDiameter);
    translate([
        rimThickness + rimPadding + (spaceBetweenCircles * 2 + smallCircleDiameter/2),
        totalWidth - (smallCircleDiameter/2 - smallCircleOffset),
        height])
        cylinder(rimHeight, d=smallCircleDiameter);
}

module BottomWidthCircles()
{
    translate([largeCircleDiameter/2 + spaceBetweenCircles - largeCircleOffset, totalWidth/2, height])
        cylinder(rimHeight, d=largeCircleDiameter);
}

module TopWidthCircles()
{
    translate([totalLength - (largeCircleDiameter/2 + spaceBetweenCircles - largeCircleOffset), totalWidth/2, height])
        cylinder(rimHeight, d=largeCircleDiameter);
}
