include<ColonistsTool1xLib.scad>
include<ColonistsTool3xLib.scad>
wallThickness = 2;
floorHeight = 3;
tileCount = 5;
height = tool3xPileHeight(tileCount) + floorHeight;
length = singleTool1xPileLength + wallThickness * 2;
width = singleTool1xPileWidth + wallThickness * 2;


difference() {
    
    cube([length, width, height]);
    translate([0, 0, 0])
        LeftTool1xPile(wallThickness, height, tileCount);
}