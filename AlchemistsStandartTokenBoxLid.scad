length = 57;
width = 46;
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

smallCircleOffset = 2.5;
smallCircleDiameter = 16;
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
        LengthCircles();
        translate([0, totalWidth - 2 * (smallCircleDiameter/2 - smallCircleOffset), 0])
            LengthCircles();
        WidthCircles();
        translate([totalLength - 2 * (smallCircleDiameter/2 - smallCircleOffset), 0, 0])
            WidthCircles();
    }
    
    difference(){
        union()
        {
            translate([0, -rimThickness, 0])
                LengthCircles();
            translate([0, totalWidth - 2 * (smallCircleDiameter/2 - smallCircleOffset) + rimThickness, 0])
                LengthCircles();
            translate([-rimThickness, 0, 0])
                WidthCircles();
            translate([totalLength - 2 * (smallCircleDiameter/2 - smallCircleOffset) + rimThickness, 0, 0])
                WidthCircles();
        }
        translate([0, 0, height])
            cube([totalLength, totalWidth, rimHeight]);
        LengthCircles();
        translate([0, totalWidth - 2 * (smallCircleDiameter/2 - smallCircleOffset), 0])
            LengthCircles();
        WidthCircles();
        translate([totalLength - 2 * (smallCircleDiameter/2 - smallCircleOffset), 0, 0])
            WidthCircles();
    }
}


module LengthCircles()
{

spaceBetweenCircles = 3;
    translate([
        smallCircleDiameter/2 + spaceBetweenCircles + rimThickness + rimPadding,
        smallCircleDiameter/2 - smallCircleOffset,
        height])
            cylinder(rimHeight, d=smallCircleDiameter);

    translate([
        totalLength /2,
        smallCircleDiameter/2 - smallCircleOffset,
        height])
        cylinder(rimHeight, d=smallCircleDiameter);
    
    translate([
        totalLength - (smallCircleDiameter/2 + spaceBetweenCircles + rimThickness + rimPadding), 
        smallCircleDiameter/2 - smallCircleOffset,
        height])
        cylinder(rimHeight, d=smallCircleDiameter);
}


module WidthCircles()
{
    spaceBetweenCircles = 3;
    
    translate([smallCircleDiameter/2 - smallCircleOffset, totalWidth/2, height])
        cylinder(rimHeight, d=smallCircleDiameter);
}



