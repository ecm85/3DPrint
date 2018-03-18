length = 80;
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
extraLidForCircles = 6.5;

coinDiameter = 21;
coinOffset = 3;


conflictTokenDiameter = 23.5;
conflictTokenOffset = 4;


reagentTokenDiameter = 24.2;
reagentTokenOffset = 4;


alchemicalTokenDiameter = 18.5;
alchemicalTokenOffset = 2;


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
        translate([0, totalWidth - 2 * (reagentTokenDiameter/2 - reagentTokenOffset), 0])
            LengthHexagons();
        WidthCircles();
    }
    
    difference(){
        union()
        {
            translate([0, -rimThickness, 0])
                LengthCircles();
            translate([0, totalWidth - 2 * (reagentTokenDiameter/2 - reagentTokenOffset) + rimThickness, 0])
                LengthHexagons();
            translate([-rimThickness, 0, 0])
                WidthCircles();
        }
        translate([0, 0, height])
            cube([totalLength, totalWidth, rimHeight]);
        LengthCircles();
        translate([0, totalWidth - 2 * (reagentTokenDiameter/2 - reagentTokenOffset), 0])
            LengthHexagons();
        WidthCircles();
    }
}


module LengthCircles()
{

spaceBetweenCircles = 3;
    translate([
        coinDiameter/2 + spaceBetweenCircles + rimThickness + rimPadding,
        coinDiameter/2 - coinOffset,
        height])
            cylinder(rimHeight, d=coinDiameter);

    translate([
        totalLength /2,
        coinDiameter/2 - coinOffset,
        height])
        cylinder(rimHeight, d=coinDiameter);
    
    translate([
        totalLength - (coinDiameter/2 + spaceBetweenCircles + rimThickness + rimPadding), 
        coinDiameter/2 - coinOffset,
        height])
        cylinder(rimHeight, d=coinDiameter);
}

module LengthHexagons()
{

spaceBetweenCircles = 3;
    translate([
        conflictTokenDiameter/2 + spaceBetweenCircles + rimThickness + rimPadding,
        conflictTokenDiameter/2 - conflictTokenOffset,
        height])
            cylinder(rimHeight, d=conflictTokenDiameter, $fn=6);

    translate([
        totalLength /2,
        conflictTokenDiameter/2 - conflictTokenOffset,
        height])
        cylinder(rimHeight, d=conflictTokenDiameter, $fn=6);
    
    translate([
        totalLength - (conflictTokenDiameter/2 + spaceBetweenCircles + rimThickness + rimPadding), 
        conflictTokenDiameter/2 - conflictTokenOffset,
        height])
        cylinder(rimHeight, d=conflictTokenDiameter, $fn=6);
}


module WidthCircles()
{
    spaceBetweenCircles = 3;
    
    translate([reagentTokenDiameter/2 - reagentTokenOffset, totalWidth/2, height])
        cylinder(rimHeight, d=reagentTokenDiameter);
}



