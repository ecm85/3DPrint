length = 18;
width = 40;
height = 21;

// translate([0,0,7.5])
// 
// 
// radius 8.8
// height 8
// total height 17.5
pyramidHeight = 8 + .5;
pyramidDiameter = 8.8 + .5;

boxLength = 12.5;
boxWidth = 12.5;
boxHeight = 17.5 - pyramidHeight;
fingerNotchSize = 11;
boxRemainder = 4;
spaceBetweenBoxes = 3;
//

 difference(){
    cube([length, width, height]);
     translate([3,15,height - (pyramidHeight + boxHeight)])
        Pyramid();
//     translate([5 + boxLength + spaceBetweenBoxes,15,height - (pyramidHeight + boxHeight)])
//        Pyramid();
 }

module Pyramid()
{
    union()
    {
        translate([0, -fingerNotchSize, pyramidHeight + boxRemainder])
            cube([boxLength, fingerNotchSize, boxHeight - boxRemainder]);
        translate([0, fingerNotchSize, pyramidHeight + boxRemainder])
            cube([boxLength, fingerNotchSize, boxHeight - boxRemainder]);
        translate([0, 0, pyramidHeight])
            cube([boxLength, boxWidth, boxHeight]);
        rotate([180, 0, 0])
            translate([boxLength/2, -boxWidth/2, -pyramidHeight/2])
                cylinder(h=pyramidHeight, r1=pyramidDiameter/2, r2=0, center=true);
    }
}

