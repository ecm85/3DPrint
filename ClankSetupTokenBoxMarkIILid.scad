length = 78;
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
extraLidForCircles = 7;

minorSecretTokenDiameter = 20.85;
minorSecretTokenOffset = 4;

majorSecretTokenDiameter = 22.8;
majorSecretTokenOffset = 4;

artifactTokenDiameter = 33;
artifactTokenOffset = 5;

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
        WidthCircles();
    }
    
    difference(){
        union()
        {
            translate([0, -rimThickness, 0])
                LeftLengthCircles();
            translate([0, rimThickness, 0])
                RightLengthCircles();
            translate([rimThickness, 0, 0])
                WidthCircles();
        }
        translate([0, 0, height])
            cube([totalLength, totalWidth, rimHeight]);
        RightLengthCircles();
        LeftLengthCircles();
        WidthCircles();
    }
}


module LeftLengthCircles()
{
    spaceBetweenCircles = 3;
    translate([majorSecretTokenDiameter/2 + spaceBetweenCircles + rimThickness + rimPadding, majorSecretTokenDiameter/2 - majorSecretTokenOffset, height])
        cylinder(rimHeight, d=majorSecretTokenDiameter);

    translate([totalLength/2, minorSecretTokenDiameter/2 - minorSecretTokenOffset, height ])
        cylinder(rimHeight, d=minorSecretTokenDiameter);
    
    translate([totalLength - (minorSecretTokenDiameter/2 + spaceBetweenCircles + rimThickness + rimPadding), minorSecretTokenDiameter/2 - minorSecretTokenOffset, height])
        cylinder(rimHeight, d=minorSecretTokenDiameter);
}

module RightLengthCircles()
{
    spaceBetweenCircles = 3;
    translate([majorSecretTokenDiameter/2 + spaceBetweenCircles + rimThickness + rimPadding, totalWidth - (majorSecretTokenDiameter/2 - majorSecretTokenOffset), height])
        cylinder(rimHeight, d=majorSecretTokenDiameter);

    translate([totalLength/2, totalWidth - (minorSecretTokenDiameter/2 - minorSecretTokenOffset), height ])
        cylinder(rimHeight, d=minorSecretTokenDiameter);
    
    translate([totalLength - (minorSecretTokenDiameter/2 + spaceBetweenCircles + rimThickness + rimPadding), totalWidth - (minorSecretTokenDiameter/2 - minorSecretTokenOffset), height])
        cylinder(rimHeight, d=minorSecretTokenDiameter);
}

module WidthCircles()
{
//    spaceBetweenCircles = 3;
//    
//    translate([reagentTokenDiameter/2 - reagentTokenOffset, totalWidth/2, height])
//        cylinder(rimHeight, d=reagentTokenDiameter);
    
    translate([totalLength - (artifactTokenDiameter/2 - artifactTokenOffset), totalWidth/2, height])
        cylinder(rimHeight, d=artifactTokenDiameter, $fn=6);
}

//spaceBetweenCircles = 3;
//translate([totalLength - (minorSecretTokenDiameter/2 + spaceBetweenCircles + rimThickness + rimPadding), totalWidth - (minorSecretTokenDiameter/2 - minorSecretTokenOffset), height])
//        cylinder(rimHeight, d=minorSecretTokenDiameter);
//translate([totalLength - (artifactTokenDiameter/2 - artifactTokenOffset), totalWidth/2, height])
//        cylinder(rimHeight, d=artifactTokenDiameter, $fn=6);
