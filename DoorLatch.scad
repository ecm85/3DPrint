holeDiameter = 4.45;
centerToCenter = 74;
lengthHoleOffset = 15;
length = centerToCenter + lengthHoleOffset * 2 + holeDiameter;
width = 25;
height = 15;
screwOffset = 10;
screwSectionHeight = 4;
fingerHoleDiameter = 22;
fingerHoleOffset = fingerHoleDiameter * .8;
fingerHoleHeight = height - screwSectionHeight;
firstFingerHole = 10;
spaceBetweenFingerHoles = 18;

$fn=50;
difference() {
    union(){
            $fn=50;
            minkowski()
            {
              translate([2,2,0])
                cube([length-4, width-4, height - 1]);
              cylinder(r=2,h=1);
            }
        }
    translate([lengthHoleOffset + holeDiameter/2, 5, 0])
        cylinder(d=holeDiameter, h=height);
    translate([length - (lengthHoleOffset + holeDiameter/2), 5, 0])
        cylinder(d=holeDiameter, h=height);
    translate([0, 0, screwSectionHeight ])
        cube([length, screwOffset, height - screwSectionHeight ]);
    translate([firstFingerHole + spaceBetweenFingerHoles * 1, screwOffset - fingerHoleOffset + fingerHoleDiameter/2, 0])
        FingerHole();
    translate([firstFingerHole + spaceBetweenFingerHoles * 2, screwOffset - fingerHoleOffset + fingerHoleDiameter/2, 0])
        FingerHole();
    translate([firstFingerHole + spaceBetweenFingerHoles * 3, screwOffset - fingerHoleOffset + fingerHoleDiameter/2, 0])
        FingerHole();
    translate([firstFingerHole + spaceBetweenFingerHoles * 4, screwOffset - fingerHoleOffset + fingerHoleDiameter/2, 0])
        FingerHole();
    translate([firstFingerHole + spaceBetweenFingerHoles * 1, width + fingerHoleOffset - fingerHoleDiameter / 2, 0])
        FingerHole();
    translate([firstFingerHole + spaceBetweenFingerHoles * 2, width + fingerHoleOffset - fingerHoleDiameter / 2, 0])
        FingerHole();
    translate([firstFingerHole + spaceBetweenFingerHoles * 3, width + fingerHoleOffset - fingerHoleDiameter / 2, 0])
        FingerHole();
    translate([firstFingerHole + spaceBetweenFingerHoles * 4, width + fingerHoleOffset - fingerHoleDiameter / 2, 0])
        FingerHole();
}

module FingerHole() {
    translate([0, 0, height - fingerHoleHeight])
        cylinder(d=fingerHoleDiameter, h=fingerHoleHeight);
}