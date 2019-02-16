include<ColonistsPlacePileLib.scad>

magnetBaseInnerDiameter = 15.4;
magnetHeight = 4.0;
floorHeight = 3;
tileCount = 12;
height = placePileHeight(tileCount) + floorHeight;
length = singlePlacePileDiameter * .9;
width = singlePlacePileDiameter;
wallThickness = 3;

difference() {
    
    cube([length, width, height]);
    translate([0, 0, 0])
        LeftPlacePile(height, tileCount);
    
}