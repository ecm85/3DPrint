length = 75;
width = 75;
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

prestigeTokenDiameter = 15.18 + .5;
prestigeTokenOffset = 4;
prestigeTokenHeight = 2.19 + .5;

moneyTokenDiameter = 16.7 + .5;
moneyTokenOffset = 4;
moneyTokenHeight = 2.05 + .5;

chiefTokenDiameter = 31.5 + .5;
chiefTokenOffset = 4;
mirror([0, 1, 0])
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
  
    translate(
        [
            spaceBetweenCircles + prestigeTokenDiameter/2 + rimThickness + rimPadding,  
            prestigeTokenDiameter/2 - prestigeTokenOffset,
            height
        ])
        cylinder(rimHeight, d=prestigeTokenDiameter);
    
    translate(
        [
            spaceBetweenCircles * 2 + prestigeTokenDiameter * 3/2 + rimThickness + rimPadding,  
            prestigeTokenDiameter/2 - prestigeTokenOffset,
            height
        ])
        cylinder(rimHeight, d=prestigeTokenDiameter);

    translate(
        [
            totalLength - (moneyTokenDiameter * 3/2 + spaceBetweenCircles * 2 + rimThickness + rimPadding),
            moneyTokenDiameter/2 - moneyTokenOffset,
            height
        ])
        cylinder(rimHeight, d=moneyTokenDiameter);

    translate(
        [
            totalLength - (moneyTokenDiameter/2 + spaceBetweenCircles + rimThickness + rimPadding),
            moneyTokenDiameter/2 - moneyTokenOffset,
            height
        ])
        cylinder(rimHeight, d=moneyTokenDiameter);       
    
}



