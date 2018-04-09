length = 70;
width = 70;
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

smallCircleDiameter = 19.05 + .8 + .5;
smallCircleOffset = 4;

mediumCircleDiameter = 23.17 + .5;
mediumCircleOffset = 4;

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
    }
    
    difference(){
        union()
        {
            translate([0, -rimThickness, 0])
                LeftLengthCircles();
            translate([0, rimThickness, 0])
                RightLengthCircles();
        }
        translate([0, 0, height])
            cube([totalLength, totalWidth, rimHeight]);
        RightLengthCircles();
        LeftLengthCircles();
    }
}


module LeftLengthCircles()
{
    spaceBetweenCircles = 3;
    translate([mediumCircleDiameter/2 + spaceBetweenCircles + rimThickness + rimPadding, mediumCircleDiameter/2 - mediumCircleOffset, height])
        cylinder(rimHeight, d=mediumCircleDiameter);
    
    translate([totalLength - (smallCircleDiameter/2 + spaceBetweenCircles + rimThickness + rimPadding), smallCircleDiameter/2 - smallCircleOffset, height])
        cylinder(rimHeight, d=smallCircleDiameter);
}

module RightLengthCircles()
{
    spaceBetweenCircles = 3;
    translate([smallCircleDiameter/2 + spaceBetweenCircles + rimThickness + rimPadding, totalWidth - (smallCircleDiameter/2 - smallCircleOffset), height])
        cylinder(rimHeight, d=smallCircleDiameter);
    
    translate([totalLength - (mediumCircleDiameter/2 + spaceBetweenCircles + rimThickness + rimPadding), totalWidth - (mediumCircleDiameter/2 - mediumCircleOffset), height])
        cylinder(rimHeight, d=mediumCircleDiameter);
}
