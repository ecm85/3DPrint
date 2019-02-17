include<ColonistsPlacePileLib.scad>

magnetBaseInnerDiameter = 15.4;
magnetHeight = 4.0;
floorHeight = 3;
tileCount = 12;
height = placePileHeight(tileCount) + floorHeight;
length = 108;
width = 95;
wallThickness = 3;

difference() {
    
    cube([length, width, height]);
    translate([0, 0, 0])
        LeftPlacePile(height, tileCount);
    translate([0, width - singlePlacePileDiameter, 0])
        LeftPlacePile(height, tileCount);
    translate([length, width/2 - singlePlacePileDiameter/2, 0])
        RightPlacePile(height, tileCount);
    translate([length/2 - singlePlacePileDiameter/2 + 5, 0, 0])
        BottomPlacePile(height, tileCount);
    translate([length/2 - singlePlacePileDiameter/2 + 5, width, 0])
        TopPlacePile(height, tileCount);
    
    translate([length/2, width/2, height - magnetHeight])
        cylinder(magnetHeight, d=magnetBaseInnerDiameter);
}