length = 65;
width = 71;
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



mediumCircleDiameter = 29.90 + .5;
mediumCircleOffset = 4;



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

        LeftLengthCircles();

    }
    
    difference(){
        union()
        {
            translate([0, -rimThickness, 0])
                LeftLengthCircles();


        }
        translate([0, 0, height])
            cube([totalLength, totalWidth, rimHeight]);

        LeftLengthCircles();

    }
}


module LeftLengthCircles()
{
    spaceBetweenCircles = 3;
    translate([length - (mediumCircleDiameter/2 + rimThickness + rimPadding), mediumCircleDiameter/2 - mediumCircleOffset, height])
        cylinder(rimHeight, d=mediumCircleDiameter);


}



