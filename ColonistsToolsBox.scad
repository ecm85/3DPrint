include<ColonistsTool1xLib.scad>
include<ColonistsTool3xLib.scad>
wallThickness = 2;
floorHeight = 3;
tileCount = 10;
magnetBaseInnerDiameter = 15.4;
magnetHeight = 4.0;
height = tool3xPileHeight(tileCount) + floorHeight;
length = 47;
width = 72;


difference() {
    
    cube([length, width, height]);
    translate([0, 0, 0])
        LeftTool1xPile(wallThickness, height, tileCount);
    translate([length, 0, 0])
        RightTool1xPile(wallThickness, height, tileCount);
    
    translate([0, width, 0])
        TopTool3xPile(wallThickness, height, tileCount);
    translate([length - (singleTool3xPileLength), width, 0])
        TopTool3xPile(wallThickness, height, tileCount);
   
    translate([length/2, width/2, height - magnetHeight])
        cylinder(magnetHeight, d=magnetBaseInnerDiameter);
}