length = 93;
width = 55;
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

medicalTokenDiameter = 25.16 + .5;
medicalTokenOffset = 4;

adminTokenDiameter = 22.7 + .5;
adminTokenOffset = 4;

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
    
    translate(
        [
            spaceBetweenCircles + medicalTokenDiameter/2 + rimThickness + rimPadding,  
            medicalTokenDiameter/2 - medicalTokenOffset,
            height
        ])
        cylinder(rimHeight, d=medicalTokenDiameter);


    translate(
        [
            totalLength - (adminTokenDiameter/2 + spaceBetweenCircles + rimThickness + rimPadding),
            adminTokenDiameter/2 - adminTokenOffset,
            height
        ])
        cylinder(rimHeight, d=adminTokenDiameter);
        
        
    
}

module RightLengthCircles()
{
    spaceBetweenCircles = 3;
    translate(
        [
            spaceBetweenCircles + chiefTokenDiameter/2 + rimThickness + rimPadding,
            totalWidth - (chiefTokenDiameter/2 - chiefTokenOffset),
            height
        ])
        cylinder(rimHeight, d=chiefTokenDiameter);

    
}

