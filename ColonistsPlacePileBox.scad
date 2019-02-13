include<ColonistsPlacePileLib.scad>

magnetBaseInnerDiameter = 15.4;
magnetHeight = 4.0;
floorHeight = 3;
tileCount = 12;
height = placePileHeight(tileCount) + floorHeight;
length = 95;
width = 95;
wallThickness = 3;

difference() {
    
    cube([length, width, height]);
    translate([0, width/2 - singlePlacePileDiameter/2, 0])
        LeftPlacePile(height, tileCount);
    translate([length, width/2 - singlePlacePileDiameter/2, 0])
        RightPlacePile(height, tileCount);
    translate([length/2 - singlePlacePileDiameter/2, 0, 0])
        BottomPlacePile(height, tileCount);
    translate([length/2 - singlePlacePileDiameter/2, width, 0])
        TopPlacePile(height, tileCount);
    
    translate([length/2, width/2, height - magnetHeight])
        cylinder(magnetHeight, d=magnetBaseInnerDiameter);
}