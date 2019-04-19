include<ColonistsPlacePileLib.scad>


magnetBaseInnerDiameter = 15.4;
magnetHeight = 4.0;
floorHeight = 3;
tileCount = 4;
height = placePileHeight(tileCount) + floorHeight;
length = 110;
wallThickness = 3;
width = 90;
firstPlayerWidth = 25.79 + .5;
firstPlayerLength = 32.95 + .5;
    
firstPlayerPileHeight = (1 * singlePlacePileHeight) + .5;
firstPlayerLengthOpeningSize = firstPlayerLength * .75;
firstPlayerWidthOpeningSize = firstPlayerWidth * .75;
firstPlayerBlockerSize = (firstPlayerWidth - firstPlayerWidthOpeningSize) / 2;
    
    
difference() {
    $fn=50;
    
    minkowski()
    {
        cube([length - 2, width - 2, height - 1]);
        cylinder(r=2,h=1);
    }
    translate([0, wallThickness, 0])
        LeftPlacePile(height, 4);
    translate([0, wallThickness + singlePlacePileDiameter - wallThickness * 2 - .03, 0])
        LeftPlacePile(height, 3);
    translate([length, 0, 0])
        RightPlacePile(height, 1);
    translate([length, width - singlePlacePileDiameter, 0])
        RightPlacePile(height, 1);
    translate([length/2 - (firstPlayerWidth)/2 - wallThickness, width, 0])
        rotate([0, 0, 270])
        {
            translate([wallThickness, wallThickness, height - firstPlayerPileHeight])
                cube([firstPlayerLength, firstPlayerWidth, firstPlayerPileHeight]);
            translate([-.00001, wallThickness + (firstPlayerBlockerSize), 0])
                cube([wallThickness + firstPlayerLengthOpeningSize, firstPlayerWidthOpeningSize, height]);
        }
    translate([length/2, width/2, height - magnetHeight])
        cylinder(magnetHeight, d=magnetBaseInnerDiameter);
}