length = 110;
width = 62;
height = 2;
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
extraLidForCircles = 5;

prestigeTokenDiameter = 15.18 + .5;
prestigeTokenOffset = 4;
prestigeTokenHeight = 2.19 + .5;

moneyTokenDiameter = 16.7 + .5;
moneyTokenOffset = 4;
moneyTokenHeight = 2.05 + .5;

chiefTokenDiameter = 31.5 + .5;
chiefTokenOffset = 4;

roundedTipDiameter = 15.29 + .5;
roundedTipOffset = 2;

bodyWidth = 15.29 + .5;
bodyLength = 8.65 + .5;

baseWidth = 18.9 + .5;
baseLength = 8.3 + .5;

mirror([0, 1, 0])
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
    spaceBetweenCircles = 2;
  
   translate([spaceBetweenCircles + rimThickness + rimPadding, 0, 0])
        Grave();
    translate([(spaceBetweenCircles + rimThickness + rimPadding) * 2 + baseWidth, 0, 0])
        Grave();      
    
}

module Grave()
{
    padding = (baseWidth - bodyWidth) / 2;
    translate(
        [
            roundedTipDiameter/2 + padding,  
            roundedTipDiameter/2 - roundedTipOffset,
            height
        ])
        cylinder(rimHeight, d=roundedTipDiameter);

    
   
}


